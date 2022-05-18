import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

AppBar buildAppBar(BuildContext context, String textTitle, bool isCheck) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      textTitle,
      style: Theme.of(context).textTheme.headline6,
    ),
    centerTitle: true,
    actions: isCheck
        ? [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: iBlack,
                  size: iIconsSize,
                ))
          ]
        : null,
  );
}
