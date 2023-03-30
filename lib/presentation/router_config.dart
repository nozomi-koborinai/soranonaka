import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soranonaka/presentation/page/feelings_post_page.dart';
import 'package:soranonaka/presentation/page/home_page.dart';

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
    'feelings_post',
    'feelingsPost',
  );

  const RouteConfigs(this.path, this.name);
  final String path;
  final String name;
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
  ),
);
