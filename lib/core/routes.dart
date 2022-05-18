import 'package:flutter/material.dart';
import 'package:waseet_com_app/screens/acounts_screen/home_acount.dart';
import 'package:waseet_com_app/screens/client_requests/client_requests.dart';
import 'package:waseet_com_app/screens/create_contract_screen/contract_details.dart';
import 'package:waseet_com_app/screens/create_contract_screen/create_contract.dart';
import 'package:waseet_com_app/screens/home_screen/home.dart';
import 'package:waseet_com_app/screens/login_screen/login.dart';
import 'package:waseet_com_app/screens/messages_screen/show_messages.dart';
import 'package:waseet_com_app/screens/notifications_screen/notifications.dart';
import 'package:waseet_com_app/screens/registration_screen/register_client.dart';
import 'package:waseet_com_app/screens/registration_screen/register_vendor.dart';
import 'package:waseet_com_app/screens/verification_pass_screen/new_password.dart';
import 'package:waseet_com_app/screens/verification_pass_screen/restore_password.dart';
import 'package:waseet_com_app/screens/verification_pass_screen/verification_page.dart';
import 'package:waseet_com_app/screens/welcome_screen/welcomscren.dart';

enum AppRoutes {
  welcome, // الصفحه الاولي التي تضهر عند فتح التطبيق
  registervendor, // شاشه تسجيل طالب الخدمه
  registerclient, // شاشه تسجيل مقدم الخدمه
  home, // الشاشه الرئيسية
  login, // تسجيل مستخدم موجود مسبقاً
  restorepassword, // أستعاده كلمه السر
  verificationcode, // شاشه كتابه كود التاكيد
  newpassword, // شاشه كلمه مرور جديدة
  notifications, // شاشه الاشعارات
  createcontract, // شاشه أنشاء عقد
  clientrequests, // شاشه طلباتي
  showmessages, // شاشه طلبات العملاء
  homeacount, // شاشه حسابي
  contractdetails // شاشخ تفاصيل العقد
}

extension StringValues on AppRoutes {
  String? get name => const {
        AppRoutes.welcome: '/',
        AppRoutes.registerclient: '/registerclient',
        AppRoutes.registervendor: '/registervendor',
        AppRoutes.home: '/home',
        AppRoutes.login: '/login',
        AppRoutes.restorepassword: '/restorepassword',
        AppRoutes.verificationcode: '/verificationcode',
        AppRoutes.newpassword: '/newpassword',
        AppRoutes.notifications: '/notifications',
        AppRoutes.createcontract: '/createcontract',
        AppRoutes.clientrequests: '/clientrequests',
        AppRoutes.showmessages: '/showmessages',
        AppRoutes.homeacount: '/homeacount',
        AppRoutes.contractdetails: '/contractdetails',
      }[this];

  Widget? get screen => {
        AppRoutes.welcome: const WelcomSecreen(),
        AppRoutes.registerclient: const RegisterClient(),
        AppRoutes.registervendor: const RegisterVendor(),
        AppRoutes.home: const HomeScreen(),
        AppRoutes.login: const LoginScreen(),
        AppRoutes.restorepassword: const RestorePassword(),
        AppRoutes.verificationcode: const Verification(),
        AppRoutes.newpassword: const NewPassword(),
        AppRoutes.notifications: const Notifications(),
        AppRoutes.createcontract: const CreateContract(),
        AppRoutes.clientrequests: const ClientRequests(),
        AppRoutes.showmessages: const ShowMessages(),
        AppRoutes.homeacount: const HomeAcount(),
        AppRoutes.contractdetails: const ContractDetails(),
      }[this];
}

// ignore: non_constant_identifier_names
final Routes = {
  AppRoutes.welcome.name!: (context) => AppRoutes.welcome.screen!,
  AppRoutes.registerclient.name!: (context) => AppRoutes.registerclient.screen!,
  AppRoutes.registervendor.name!: (context) => AppRoutes.registervendor.screen!,
  AppRoutes.home.name!: (context) => AppRoutes.home.screen!,
  AppRoutes.login.name!: (context) => AppRoutes.login.screen!,
  AppRoutes.restorepassword.name!: (context) =>
      AppRoutes.restorepassword.screen!,
  AppRoutes.verificationcode.name!: (context) =>
      AppRoutes.verificationcode.screen!,
  AppRoutes.newpassword.name!: (context) => AppRoutes.newpassword.screen!,
  AppRoutes.notifications.name!: (context) => AppRoutes.notifications.screen!,
  AppRoutes.createcontract.name!: (context) => AppRoutes.createcontract.screen!,
  AppRoutes.clientrequests.name!: (context) => AppRoutes.clientrequests.screen!,
  AppRoutes.showmessages.name!: (context) => AppRoutes.showmessages.screen!,
  AppRoutes.homeacount.name!: (context) => AppRoutes.homeacount.screen!,
  AppRoutes.contractdetails.name!: (context) =>
      AppRoutes.contractdetails.screen!,
};
