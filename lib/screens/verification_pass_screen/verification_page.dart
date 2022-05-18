import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/verification_pass_screen/new_password.dart';
import 'package:waseet_com_app/screens/verification_pass_screen/widget/close_button.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'استعاده كلمه المرور', false),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(iPaddingAllScreen),
          child: Column(
            children: [
              const CloasButton(),
              const SizedBox(
                height: iMarginCard * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _textFieldOTP(true, false, context),
                  _textFieldOTP(false, false, context),
                  _textFieldOTP(false, false, context),
                  _textFieldOTP(false, false, context),
                ],
              ),
              const SizedBox(
                height: iMarginCard * 2,
              ),
              ButtonAllApp(
                title: 'التالي',
                onClick: () {
                  Navigator.of(context).pushNamed(AppRoutes.newpassword.name!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP(bool? first, bool? last, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: iMarginCard - 10),
      height: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextFormField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          maxLength: 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: iBackgroundTextFeild,
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(iBorderRaidus - 10)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(iBorderRaidus - 10)),
          ),
        ),
      ),
    );
  }
}
