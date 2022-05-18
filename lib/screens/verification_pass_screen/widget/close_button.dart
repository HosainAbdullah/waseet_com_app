import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class CloasButton extends StatelessWidget {
  const CloasButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(ipaddingCard),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ]),
        child: InkWell(
          borderRadius: BorderRadius.circular(ipaddingCard),
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.close),
        ),
      ),
    );
  }
}
