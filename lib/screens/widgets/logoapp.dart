import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({
    Key? key,
    this.imgWidth,
    this.imgHeght,
  }) : super(key: key);
  final double? imgWidth;
  final double? imgHeght;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        width: imgWidth,
        height: imgHeght,
        'assets/image/logoApp.png',
      ),
    );
  }
}
