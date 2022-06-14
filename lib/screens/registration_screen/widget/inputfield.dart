import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class WidgetTextFormField extends StatelessWidget {
  //-------------------------------------------
  final TextEditingController? controller;
  final String? textLabel;
  final TextInputType? keyboardType;
  final double? width;
  final String? textError;
  final VoidCallback? onTestInput;

  const WidgetTextFormField({
    Key? key,
    this.controller,
    this.textLabel,
    this.keyboardType,
    this.width,
    this.textError,
    this.onTestInput,
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
        controller: controller,
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return textError;
        //   }
        //   return null;
        // },
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
