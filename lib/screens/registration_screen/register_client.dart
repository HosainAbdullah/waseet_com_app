import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/home_screen/home.dart';
import 'package:waseet_com_app/screens/login_screen/login.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/logoapp.dart';

class RegisterClient extends StatefulWidget {
  const RegisterClient({Key? key}) : super(key: key);

  @override
  _RegisterClientState createState() => _RegisterClientState();
}

class _RegisterClientState extends State<RegisterClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, StringsApp.labalScreenClient, true),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: iPaddingAllScreen),
            child: Column(
              children: [
                const LogoApp(
                  imgHeght: 150,
                  imgWidth: 150,
                ),
                const SizedBox(
                  height: iMarginCard - 10,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width - 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'الاسم ',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iMarginCard - 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 220,
                      // width: MediaQuery.of(context).size.width - 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                          right: iPaddingAllScreen,
                          left: iPaddingAllScreen - 10),
                      decoration: BoxDecoration(
                        color: iBackgroundTextFeild,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: null,
                        style: Theme.of(context).textTheme.bodyLarge,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: 'رقم الجوال',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: iMarginCard - 10,
                    ),
                    Container(
                      width: 90,
                      height: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                          right: iPaddingAllScreen,
                          left: iPaddingAllScreen - 10),
                      decoration: BoxDecoration(
                        color: iBackgroundTextFeild,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButtonFormField(
                        iconSize: 20,
                        style: Theme.of(context).textTheme.bodyLarge,
                        alignment: AlignmentDirectional.center,
                        items: [
                          const DropdownMenuItem<String>(
                            child: Text('999'),
                            value: '999',
                          ),
                        ],
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: '+966',
                          hintStyle: Theme.of(context).textTheme.bodyLarge,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: iMarginCard - 10,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width - 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'كلمه المرور',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iMarginCard - 10,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width - 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'المصرف البنكي',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iMarginCard - 10,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width - 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'رقم البيان',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iMarginCard - 10,
                ),
                Row(
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width - 40,
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                          right: iPaddingAllScreen,
                          left: iPaddingAllScreen - 10),
                      decoration: BoxDecoration(
                        color: iBackgroundTextFeild,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: iIconsSize * 1.5,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'من فضلك قم بإرفاق صوره الهوية',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
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
                    Navigator.of(context).pushNamed(AppRoutes.home.name!);
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
                        Navigator.of(context).pushNamed(AppRoutes.login.name!);
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
          // ],
        ),
        // ),
        // ),
      ),
    );
  }
}
