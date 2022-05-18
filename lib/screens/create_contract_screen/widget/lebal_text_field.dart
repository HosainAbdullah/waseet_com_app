import 'package:flutter/material.dart';

class TextLabalField extends StatelessWidget {
  final String title;
  const TextLabalField({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
