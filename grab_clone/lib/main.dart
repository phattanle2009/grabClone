import 'package:flutter/material.dart';
import 'package:grab_clone/constant/route.dart';
import 'package:grab_clone/feature/splash/splash_page.dart';
import 'package:grab_clone/tabbar/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoute.splashRoute: (context) => SplashPage(),
        AppRoute.dashboardRoute: (context) => DashboardNavigator(),
      },
      initialRoute: AppRoute.splashRoute,
    );
  }
}
