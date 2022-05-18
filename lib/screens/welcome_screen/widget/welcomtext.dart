import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/widgets/alltextapp.dart';

class TextWelcomCenter extends StatelessWidget {
  const TextWelcomCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Text(StringsApp.welcomeTitleAR,
              style: Theme.of(context).textTheme.headline5),
          const SizedBox(
            height: iMarginCard / 2,
          ),
          TextTitle(
            text: StringsApp.welcomeTitleEN,
          ),
        ],
      ),
    );
  }
}
