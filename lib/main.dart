import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
// import 'package:waseet_com_app/screens/welcome_screen/welcomscren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = "WaseetCom";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: AppThemeData.lightTheme(),
      // home: const WelcomSecreen(),
      initialRoute: AppRoutes.welcome.name,
      routes: Routes,
    );
  }
}
