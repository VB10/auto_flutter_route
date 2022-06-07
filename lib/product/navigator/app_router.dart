import 'package:auto_flutter_route/dashboard/settings/settings_view.dart';
import 'package:auto_flutter_route/dashboard/user/user_detail_view.dart';
import 'package:auto_flutter_route/home/home_detail_view.dart';
import 'package:auto_flutter_route/home/home_view.dart';
import 'package:auto_flutter_route/product/navigator/guard/auth_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../dashboard/dashboard_view.dart';
import '../../dashboard/user/model/user_model.dart';
import '../../dashboard/user/user_view.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeView,
      path: 'home',
      initial: true,
    ),
    AutoRoute(page: HomeDetailView, guards: [AuthGuard], path: 'detail'),
    AutoRoute(page: DashboardView, children: [
      AutoRoute(
        page: EmptyPageRouter,
        name: 'UserFullRoute',
        path: 'userFullRoute',
        children: [
          AutoRoute(initial: true, page: UserView, path: 'userView'),
          AutoRoute(page: UserDetailView, path: ':id'),
        ],
      ),
      AutoRoute(page: SettingView, path: 'settings'),
    ])
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
