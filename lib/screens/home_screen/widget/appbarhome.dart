import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';

AppBar appBarHome(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.notifications.name!);
      },
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          overflow: Overflow.visible,
          children: [
            const Icon(
              Icons.notifications,
              color: iBlack,
            ),
            Positioned(
              right: -3,
              top: 0,
              child: Container(
                height: 14,
                width: 14,
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(iBorderRaidus - 10),
                  border: Border.all(width: 0.5, color: iWhite),
                  color: iRad,
                ),
                constraints: const BoxConstraints(
                  minWidth: 15,
                  minHeight: 15,
                ),
                child: Text(
                  '9',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: iWhite, fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    title: Image.asset(
      'assets/image/logoAppmain.png',
      height: 40,
    ),
    centerTitle: true,
  );
}
