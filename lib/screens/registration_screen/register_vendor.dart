import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_hive.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_service.dart';
import 'package:waseet_com_app/screens/registration_screen/widget/nameTextField.dart';
import 'package:waseet_com_app/screens/registration_screen/widget/passwordTextField.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/logoapp.dart';

class RegisterVendor extends StatefulWidget {
  const RegisterVendor({Key? key}) : super(key: key);

  @override
  _RegisterVendorState createState() => _RegisterVendorState();
}

class _RegisterVendorState extends State<RegisterVendor> {
  final formKey = GlobalKey<FormState>();
  final nameControler = TextEditingController();
  final phoneControler = TextEditingController();
  final passwordControler = TextEditingController();
  bool isCheck = false;
  String? countryCode;

  Future initBox() async {
    await Hive.openBox<UserModel>('userModel');
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
      appBar: buildAppBar(context, StringsApp.labelScreenVendor, true),
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
                  WidgetNameFormField(
                    controller: nameControler,
                    textLabel: 'الاسم',
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: EdgeInsets.only(
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
                        dropdownDecoration: BoxDecoration(),
                        searchText: 'أختر الدوله',
                        decoration: InputDecoration(
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
                    height: iMarginCard - 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {
                            isCheck = value!;
                          });
                        },
                      ),
                      Text(
                        StringsApp.termsandConditions,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        width: ipadding,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          StringsApp.termsandConditionsOK,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: iBackgroundButton),
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(iButtonSize),
                      primary: iBackgroundButton,
                      onPrimary: iWhite,
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (isCheck) {
                          final phoneNumAndCoun =
                              "$countryCode${phoneControler.text}";
                          final UserModel model = UserModel()
                            ..userName = nameControler.text
                            ..phoneNumber = phoneNumAndCoun
                            ..userPass = passwordControler.text
                            ..bankName = "null"
                            ..numberIp = "null"
                            ..imageIdentity = "null"
                            ..userType = 0;
                          final insert = DataApiDatabase().createData(model);
                          print(insert);
                          OpHiveUser().savaDataUser(model);
                          Navigator.of(context).pushNamed(AppRoutes.home.name!);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: iBackgroundButton,
                              duration: const Duration(seconds: 5),
                              content: Text(
                                textAlign: TextAlign.center,
                                'قم بالموافقه علي الشروط والاحكام ',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: Text(
                      StringsApp.signUpButton,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: iWhite),
                    ),
                  ),
                  const SizedBox(
                    height: iMarginCard,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(StringsApp.haveAnAccount),
                      const SizedBox(
                        width: iMarginCard - 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.login.name!);
                        },
                        child: Text(
                          StringsApp.logInNow,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
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
