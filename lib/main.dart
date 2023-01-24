import 'package:flutter/material.dart';
import 'package:lefine_app/product/navigator/app_router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
    );
  }
}
