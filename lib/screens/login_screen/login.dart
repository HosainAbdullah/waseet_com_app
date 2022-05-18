import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';
import 'package:waseet_com_app/screens/widgets/logoapp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, StringsApp.labelLogIn, true),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(iPaddingAllScreen),
            child: Column(
              children: [
                const LogoApp(
                  imgHeght: 200,
                  imgWidth: 200,
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
                        textInputAction: TextInputAction.next,
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
                    // .copyWith(color: iBackgroundButton),
                  ),
                ),
                const SizedBox(
                  height: iMarginCard * 1.5,
                ),
                ButtonAllApp(
                  title: StringsApp.labelLogIn,
                  onClick: () {
                    Navigator.of(context).pushNamed(AppRoutes.home.name!);
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
          // ],
        ),
        // ),
        // ),
      ),
    );
  }
}
