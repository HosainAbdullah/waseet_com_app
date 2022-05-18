import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/widgets/alltextapp.dart';

class WelcomButton extends StatelessWidget {
  final String? buttonText;
  final IconData icons;
  final VoidCallback onClick;
  const WelcomButton(
      {Key? key, this.buttonText, required this.icons, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        highlightColor: iClickHover,
        borderRadius: BorderRadius.circular(iBorderRaidus / 2),
        onTap: onClick,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: iColorBorder,
            ),
            borderRadius: BorderRadius.circular(iBorderRaidus / 2),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(ipadding),
            child: Row(
              children: [
                const SizedBox(
                  width: iMarginCard,
                ),
                TextTitle(
                  text: buttonText!,
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: iBackgroundCircleIcon,
                  maxRadius: 35,
                  child: Icon(
                    icons,
                    size: iIconsSize * 2.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
