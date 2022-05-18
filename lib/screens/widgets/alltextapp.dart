import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String? text;
  const TextTitle({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class LabalScreens extends StatelessWidget {
  final String title;
  const LabalScreens({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
