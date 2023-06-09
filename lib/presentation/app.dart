import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soranonaka/presentation/component/widget_ref.dart';
import 'package:soranonaka/presentation/router_config.dart';
import 'package:soranonaka/presentation/theme.dart';
import 'package:soranonaka/usecase/user/login_usecase.dart';

import 'component/loading.dart';
import 'component/scaffold_messenger.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ログイン結果を監視する
    ref.listenResult(
      loginResultProvider,
      completeMessage: 'ようこそ ソラノナカ へ！',
    );

    return MaterialApp.router(
      title: 'ソラノナカ',
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerConfigProvider),
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      theme: ref.read(themeProvider),
      builder: (context, child) {
        return Consumer(
          builder: (context, ref, _) {
            final isLoading = ref.watch(overlayLoadingProvider);
            return Stack(
              children: [
                child!,
                // ローディング表示
                if (isLoading) const OverlayLoading()
              ],
            );
          },
        );
      },
    );
  }
}
