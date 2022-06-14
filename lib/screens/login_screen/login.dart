import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_hive.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_service.dart';
import 'package:waseet_com_app/screens/registration_screen/widget/passwordTextField.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';
import 'package:waseet_com_app/screens/widgets/logoapp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final phoneControler = TextEditingController();
  final passwordControler = TextEditingController();
  bool isCheck = false;
  String? countryCode;
  List<UserModel>? users = [];
  bool isCheckUserName = false;
  bool isCheckPassword = false;

  Future initBox() async {
    try {
      await Hive.openBox<UserModel>('userModel');
      users = await DataApiDatabase().fetchData();
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    initBox();
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, StringsApp.labelLogIn, true),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(iPaddingAllScreen),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const LogoApp(
                    imgHeght: 200,
                    imgWidth: 200,
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: const EdgeInsets.only(
                          right: iPaddingAllScreen,
                          left: iPaddingAllScreen - 10),
                      decoration: BoxDecoration(
                        color: iBackgroundTextFeild,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IntlPhoneField(
                        initialCountryCode: 'YE',
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodyLarge,
                        controller: phoneControler,
                        dropdownTextStyle:
                            Theme.of(context).textTheme.bodyLarge,
                        dropdownDecoration: const BoxDecoration(),
                        searchText: 'أختر الدوله',
                        pickerDialogStyle: PickerDialogStyle(
                          countryNameStyle:
                              Theme.of(context).textTheme.bodyLarge,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'رقم الجوال',
                          border: InputBorder.none,
                        ),
                        textInputAction: TextInputAction.next,
                        onChanged: (phone) {
                          countryCode = phone.countryCode;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  WidgetPasswordFormField(
                    controller: passwordControler,
                    textLabel: 'كلمه المرور',
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: iMarginCard * 1.5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.restorepassword.name!);
                    },
                    child: Text(
                      StringsApp.restorePassword,
                      style: Theme.of(context).textTheme.bodyText1!,
                    ),
                  ),
                  const SizedBox(
                    height: iMarginCard * 1.5,
                  ),
                  ButtonAllApp(
                    title: StringsApp.labelLogIn,
                    onClick: () {
                      if (formKey.currentState!.validate()) {
                        final newPhoneAndCoun =
                            "$countryCode${phoneControler.text}";
                        if (users == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: iBackgroundButton,
                              duration: const Duration(seconds: 5),
                              content: Text(
                                textAlign: TextAlign.center,
                                ' تأكد أنك متصل بالانترنت وقم بأعاده ألمحاوله \n أو قم بأغلاق النافذه وأعادة فتحها ',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          );
                          initBox();
                          setState(() {});
                        } else {
                          users!.forEach((element) {
                            if (element.phoneNumber == newPhoneAndCoun) {
                              if (element.userPass == passwordControler.text) {
                                OpHiveUser().savaDataUser(element);
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.home.name!);
                              } else {
                                /// password in
                                isCheckPassword = true;
                              }
                            } else {
                              ///  phone Number in
                              isCheckUserName = true;
                            }
                          });
                          if (isCheckUserName) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: iBackgroundButton,
                                duration: const Duration(seconds: 5),
                                content: Text(
                                  textAlign: TextAlign.center,
                                  'هنا خطأ في رقم الهاتف أعد كتابته مره أخري',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            );
                          }
                          if (isCheckPassword) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: iBackgroundButton,
                                duration: const Duration(seconds: 5),
                                content: Text(
                                  textAlign: TextAlign.center,
                                  'هنا خطأ في كلمه المرور أعد كتابتها مره أخري',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            );
                          }
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: iMarginCard * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(ipadding),
                          height: 50,
                          width: 120,
                          //  alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(iBorderRaidus),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.facebook),
                              const SizedBox(
                                width: iMarginCard - 10,
                              ),
                              Text(
                                'فيسبوك',
                                style: Theme.of(context).textTheme.bodyText1!,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: iMarginCard * 1.5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(ipadding),
                          height: 50,
                          width: 120,
                          //  alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(iBorderRaidus),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.five_g_rounded),
                              const SizedBox(
                                width: iMarginCard - 10,
                              ),
                              Text(
                                'جوجل',
                                style: Theme.of(context).textTheme.bodyText1!,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: iMarginCard * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ليس لديك حساب ؟',
                          style: Theme.of(context).textTheme.bodyText1!),
                      const SizedBox(
                        width: iMarginCard - 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'سجل الان',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: iBackgroundButton),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // ],
        ),
        // ),
        // ),
      ),
    );
  }
}
