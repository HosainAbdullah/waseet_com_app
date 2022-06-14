import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/services/init_boxes_hive.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  await Hive.initFlutter();

  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>('userModel');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isRoutes;
  @override
  void initState() {
    super.initState();
    // initBox();
    final box = Boxes.getBoxUsers();
    if (box.keys.length == 0) {
      isRoutes = false;
    } else {
      isRoutes = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    const String title = "WaseetCom";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: AppThemeData.lightTheme(),
      // home: const WelcomSecreen(),
      initialRoute: isRoutes! ? AppRoutes.home.name : AppRoutes.welcome.name,
      routes: Routes,
    );
  }
}
