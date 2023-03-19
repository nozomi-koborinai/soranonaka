import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:soranonaka/firebase_options_dev.dart' as dev;
import 'package:soranonaka/firebase_options_prod.dart' as prod;

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

  // パッケージ情報
  final packageInfo = await PackageInfo.fromPlatform();

  // FirebaseUser を取得する
  final firebaseUser = await FirebaseAuth.instance.userChanges().first;
  print('uid = ${firebaseUser?.uid}');
  if (firebaseUser == null) {
    // 未サインインなら匿名ユーザーでサインインする
    final credential = await FirebaseAuth.instance.signInAnonymously();
    final uid = credential.user!.uid;
    print('Signed in: uid = $uid');
  }
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
      ],
      child: const App(),
    ),
  );
}
