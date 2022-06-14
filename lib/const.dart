import 'package:flutter/material.dart';

// الالوان الاساسيه في كامل التطبيق
const Color iBackgroundButton = Color(0xFF00c5da); // لون خلفيه الازرار
const Color iBackgroundTextFeild =
    Color(0xFFf2f7fb); //e5f8fa // لون خلفيه حقول النص
const Color iBackgroundCircleIcon = Color(0xFFe5f8fa);
const Color iBackgroundApp = Color(0xFFffffff);
const Color iBlack = Colors.black;
const Color iWhite = Colors.white;
const Color iRad = Colors.red;
Color iColorBorder = Colors.grey.shade300;

// ألوان تأثيرات الظغط علي العناصر
Color iClickHover = Colors.blue.shade100;

// مقدار الفراغ الخارجي في كل الشاشات
const double iPaddingAllScreen = 20;
// Fonts
const iTextFamily = 'URWDINArabic';
const double iFontSize = 14;
const double iFontSizeHeader = 18;
const double iFontSizeSubHeader = 16;

// spaces
const double ipadding = 10;
const ipaddingCard = 20.0;
const double iMarginCard = 20.0;
// size
const iIconsSize = 20.0;
const iButtonSize = 60.0;

// مقدار التدوير لحواف العناصر
const iBorderRaidus = 20.0;

// style
class AppThemeData {
  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        primaryColor: iBackgroundApp,
        scaffoldBackgroundColor: iBackgroundApp,
        appBarTheme: const AppBarTheme(
          backgroundColor: iBackgroundApp,
          elevation: 0,
        ),
        backgroundColor: iBackgroundApp,
        fontFamily: iTextFamily,
        textTheme: TextTheme(
          // =====================
          headline4: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: iBlack,
          ),
          // =====================
          headline5: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: iBlack,
          ),
          // =====================
          headline6: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: iBlack,
          ),
          // =====================

          subtitle1: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: iBlack,
          ),
          bodyText2: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: iBlack,
          ),
        ),
      );
}

// جميع النصوص التي في التطبيق
class StringsApp {
  // نصوص شاشه الترحيب الاولي بعد شاشه الاسبلاش
  static String welcomeTitleAR = 'من فضلك اختر نوع المستخدم';
  static String welcomeTitleEN = 'choose user type';

// شاشه التسجيل كمقدم خدمه
  static String labalScreenClient = "التسجيل كمقدم خدمة";

//شاشه التسجيل كطالب خدمه
  static String labelScreenVendor = "التسجيل كطالب خدمه";

// نص مشترك بين شاشه مقدم خدمه و طالب خدمه
  static String termsandConditions = "الموافقه علي الشروط والاحكام";
  static String termsandConditionsOK = "الشروط والاحكام";
  static String signUpButton = "التسجيل";
  static String haveAnAccount = "لديك حساب ؟";
  static String logInNow = "سجل الدخول الان";

// نص شاشه تسجيل الدخول
  static String labelLogIn = "تسجيل الدخول";
  static String restorePassword = "استعاده كلمة المرور";
}
