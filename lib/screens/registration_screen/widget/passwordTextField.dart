import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:flutter/services.dart';

class WidgetPasswordFormField extends StatelessWidget {
  //-------------------------------------------
  final TextEditingController? controller;
  final String? textLabel;
  final TextInputType? keyboardType;
  final double? width;

  const WidgetPasswordFormField({
    Key? key,
    this.controller,
    this.textLabel,
    this.keyboardType,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(
          right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
      decoration: BoxDecoration(
        color: iBackgroundTextFeild,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        obscureText: true,
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp(
              r'^[A-Za-z0-9]+',
            ),
          ),
        ],
        controller: controller,
        validator: (pass) {
          // String patternpass =
          //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
          String patternpass = r'^[A-Za-z0-9]+.{8,}';
          RegExp regex = RegExp(
            patternpass,
          );
          if (!regex.hasMatch(pass!))
            return 'خطأ في كلمه المرور';
          else
            return null;
        },
        style: Theme.of(context).textTheme.bodyLarge,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: textLabel,
        ),
      ),
    );
  }
}
