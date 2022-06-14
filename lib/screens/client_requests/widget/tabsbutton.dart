import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class TabsButton extends StatelessWidget {
  const TabsButton(
      {Key? key,
      // required this.hiegthBox,
      required this.title,
      required this.subTitle,
      required this.colors,
      required this.onClick,
      required this.backgroundColors})
      : super(key: key);

  // final double hiegthBox;
  final String title;
  final String subTitle;
  final Color colors;
  final Color backgroundColors;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width) / 3.5,
      height: 80,
      decoration: BoxDecoration(
        color: backgroundColors,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            // offset: Offset(1, 1),
            color: Colors.black,
            blurRadius: 10,
            spreadRadius: -5,
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: colors,
              width: 2,
            ),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: iMarginCard - 10,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
