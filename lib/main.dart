import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:clean_mvvm_flutter/shared/di/app_module.dart';
import 'package:clean_mvvm_flutter/shared/router/router.gr.dart';
import 'package:get_it/get_it.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I.get<AppRouter>();
    return MaterialApp.router(
        title: 'Flutter Demo',
        routerDelegate: AutoRouterDelegate(appRouter),
        routeInformationParser: appRouter.defaultRouteParser(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}