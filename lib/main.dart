import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:soranonaka/domain/user/user_repository.dart';
import 'package:soranonaka/firebase_options_dev.dart' as dev;
import 'package:soranonaka/firebase_options_prod.dart' as prod;
import 'package:soranonaka/infrastructure/firebase.dart';
import 'package:soranonaka/infrastructure/user/user_repository_impl.dart';

import 'domain/app_info.dart';
import 'presentation/app.dart';

const flavor = String.fromEnvironment('FLAVOR');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Flavor に応じた FirebaseOptions を準備する
  final firebaseOptions = flavor == 'prod'
      ? prod.DefaultFirebaseOptions.currentPlatform
      : dev.DefaultFirebaseOptions.currentPlatform;

  // Firebase の初期化
  await Firebase.initializeApp(
    options: firebaseOptions,
  );

  // 画面の向きを縦固定
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // パッケージ情報
  final packageInfo = await PackageInfo.fromPlatform();

  runApp(
    ProviderScope(
      overrides: [
        // アプリ情報の上書き
        appInfoProvider.overrideWith(
          (ref) => AppInfo(
            appName: packageInfo.appName,
            packageName: packageInfo.packageName,
            version: 'v${packageInfo.version}',
            buildNumber: packageInfo.buildNumber,
            copyRight: '(C)2023 Nozomi Koborinai',
            iconImagePath: '', // TODO
            privacyPolicyUrl: Uri.parse(
              '', // TODO
            ),
            termsOfServiceUrl: Uri.parse(
              '', // TODO
            ),
          ),
        ),
        // 未実装プロバイダーの上書き
        userRepositoryProvider.overrideWith(
          (ref) {
            final repository = UserRepositoryImpl(
              auth: ref.watch(firebaseAuthProvider),
              userColletionRef: ref.watch(userCollectionRefProvider),
            );
            ref.onDispose(repository.dispose);
            return repository;
          },
        ),
      ],
      child: const App(),
    ),
  );
}
