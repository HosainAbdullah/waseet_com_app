import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/notifications_screen/model/notifiction_model.dart';

Widget buildNotifiction(NotifictionsModel items, BuildContext context) {
  final iColor = items.typeNotifiction == 1
      ? Colors.blue
      : items.typeNotifiction == 2
          ? Colors.orange
          : items.typeNotifiction == 3
              ? Colors.green
              : Colors.red;
  final iIcon = items.typeNotifiction == 1
      ? Icons.edit_note_rounded
      : items.typeNotifiction == 2
          ? Icons.description_rounded
          : items.typeNotifiction == 3
              ? Icons.done_rounded
              : Icons.close_rounded;
  return ListTile(
    contentPadding: EdgeInsets.zero,
    leading: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: iColor.shade100,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        iIcon,
        color: iColor,
        size: 30,
      ),
    ),
    title: RichText(
      text: TextSpan(
        style: const TextStyle(color: iBlack),
        children: [
          TextSpan(
              text: '${items.typeAcd}\n',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: iBackgroundButton)),
          TextSpan(
            text: items.textNotifiction,
            style: Theme.of(context).textTheme.bodyText2!,
          ),
        ],
      ),
    ),
    subtitle: const Text(
      '25 / 5 /2020 4:32PM',
      style: TextStyle(color: Colors.black26, fontSize: 12),
    ),
  );
}
