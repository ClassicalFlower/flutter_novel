import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:novel/app/root_main.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(const AppPage());

  if(Platform.isAndroid){
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

final RouteObserver<PageRoute> routeObserver = RouteObserver();

class AppPage extends StatelessWidget{

  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "小说",
      navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ProjectColor.primary,
        dividerColor: ProjectColor.lightGray,
        scaffoldBackgroundColor: ProjectColor.paper,
        textTheme: TextTheme(bodyLarge: TextStyle(color: ProjectColor.darkGray))
      ),
      home: const OKToast(child: RootPage()),
    );
  }
}

class ProjectColor{
  static Color primary = const Color(0xFF23B38E);
  static Color secondary = const Color(0xFF51DEC6);
  static Color red = const Color(0xFFFF2B45);
  static Color orange = const Color(0xFFF67264);
  static Color white = const Color(0xFFFFFFFF);
  static Color paper = const Color(0xFFF5F5F5);
  static Color lightGray = const Color(0xFFBBBBBB);
  static Color darkGray = const Color(0xFF333333);
  static Color gray = const Color(0xFF888888);
  static Color blue = const Color(0xFF3688FF);
  static Color golden = const Color(0xff8B7961);
}

