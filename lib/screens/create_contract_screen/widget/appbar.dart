import 'package:flutter/material.dart';

AppBar appBarWidget(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
            size: 20,
          ))
    ],
  );
}

AppBar appBarContractDetails(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.share,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    title: PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      constraints: const BoxConstraints(maxWidth: 120),
      position: PopupMenuPosition.under,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
            textStyle: Theme.of(context).textTheme.bodyText2,
            child: const Text('تواصل مع الادارة')),
        PopupMenuItem(
          textStyle: Theme.of(context).textTheme.bodyText2,
          child: const Text('تبليغ عن مشكله'),
        ),
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
            size: 20,
          ))
    ],
  );
}
