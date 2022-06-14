import 'package:flutter/material.dart';

import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';

import 'package:waseet_com_app/screens/welcome_screen/widget/boxbutton.dart';
import 'package:waseet_com_app/screens/welcome_screen/widget/welcomtext.dart';
import 'package:waseet_com_app/screens/widgets/logoapp.dart';

class WelcomSecreen extends StatefulWidget {
  final String? title;
  const WelcomSecreen({Key? key, this.title}) : super(key: key);

  @override
  State<WelcomSecreen> createState() => _WelcomSecreenState();
}

class _WelcomSecreenState extends State<WelcomSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(iPaddingAllScreen),
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: LogoApp(),
            ),
            const SizedBox(
              height: iMarginCard,
            ),
            const TextWelcomCenter(),
            WelcomButton(
              buttonText: 'مقدم خدمة',
              icons: Icons.person_off,
              onClick: () {
                Navigator.of(context).pushNamed(AppRoutes.registerclient.name!);
              },
            ),
            const SizedBox(
              height: iMarginCard / 2,
            ),
            WelcomButton(
              buttonText: 'طالب خدمة',
              icons: Icons.person_add,
              onClick: () {
                Navigator.of(context).pushNamed(AppRoutes.registervendor.name!);
              },
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
