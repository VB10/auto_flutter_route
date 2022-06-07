import 'package:auto_flutter_route/home/home_view.dart';
import 'package:auto_flutter_route/product/navigator/app_router.dart';
import 'package:auto_flutter_route/product/navigator/guard/auth_guard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter(authGuard: AuthGuard());
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
    return const MaterialApp(
      title: 'Material App',
      home: HomeView(),
    );
  }
}
