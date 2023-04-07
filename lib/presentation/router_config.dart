import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soranonaka/presentation/page/feelings_post_page.dart';
import 'package:soranonaka/presentation/page/home_page.dart';

import '../domain/user/user_repository.dart';
import 'page/login_page.dart';

// GoRoute.path/name プロパティの設定値を保持する列挙体
enum RouteConfigs {
  login(
    '/',
    'login',
  ),
  home(
    'home',
    'home',
  ),
  feelingsPost(
    'feelings-post',
    'feelingsPost',
  );

  const RouteConfigs(this.path, this.name);
  final String path;
  final String name;
}

/// ログイン状態の変化を通知する
class GoRouterRefreshNotifier extends ChangeNotifier {
  GoRouterRefreshNotifier(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

// GoRouterの設定
final routerConfigProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RouteConfigs.login.path,
        name: RouteConfigs.login.name,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
        routes: <RouteBase>[
          GoRoute(
            path: RouteConfigs.home.path,
            name: RouteConfigs.home.name,
            builder: (BuildContext context, GoRouterState state) =>
                const HomePage(),
            routes: <RouteBase>[
              GoRoute(
                path: RouteConfigs.feelingsPost.path,
                name: RouteConfigs.feelingsPost.name,
                pageBuilder: (context, state) => const MaterialPage(
                  fullscreenDialog: true,
                  child: FeelingsPostPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      final loggedIn = ref.watch(loggedInProvider).value;
      // 表示直後はログイン状態が未確定（loggedIn が null）
      // そのため保留の意味で null を返却
      if (loggedIn == null) {
        return null;
      }
      // ログイン済み かつ 現在の画面 = ログイン画面 なら ホーム画面にリダイレクト
      if (loggedIn) {
        if (state.location == RouteConfigs.login.path) {
          return RouteConfigs.home.path;
        }
        return null;
      }
      // 未ログインでも表示できる画面ならリダイレクトしない
      if (state.location == RouteConfigs.login.path) {
        return null;
      }
      // 未ログインならログイン画面にリダイレクトする
      return RouteConfigs.login.path;
    },
    refreshListenable: GoRouterRefreshNotifier(
      ref.watch(loggedInProvider.stream),
    ),
  ),
);
