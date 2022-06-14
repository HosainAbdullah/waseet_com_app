import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:flutter/services.dart';

class WidgetNameFormField extends StatelessWidget {
  //-------------------------------------------
  final TextEditingController? controller;
  final String? textLabel;
  final TextInputType? keyboardType;
  final double? width;

  const WidgetNameFormField({
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
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(
            r"^[\u0621-\u064Aa-zA-Z\d\-_\s]+",
          )),
        ],
        controller: controller,
        validator: (name) {
          String patternname = r'^[\u0621-\u064Aa-zA-Z\d\-_\s]+';
          RegExp regex = RegExp(
            patternname,
          );
          if (!regex.hasMatch(name!))
            return 'هناك خطأ في الاسم';
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
