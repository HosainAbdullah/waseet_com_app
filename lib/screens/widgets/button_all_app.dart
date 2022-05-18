import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class ButtonAllApp extends StatelessWidget {
  const ButtonAllApp({
    Key? key,
    required this.title,
    required this.onClick,
  }) : super(key: key);
  final String title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(iButtonSize),
        primary: iBackgroundButton,
        onPrimary: iWhite,
      ),
      onPressed: onClick,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: iWhite),
      ),
    );
  }
}
