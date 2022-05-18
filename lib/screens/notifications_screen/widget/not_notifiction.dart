import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class NotNotifiction extends StatelessWidget {
  const NotNotifiction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      padding: const EdgeInsets.all(iPaddingAllScreen),
      children: [
        Container(
          height: 80,
        ),
        const CircleAvatar(
          radius: 80,
          backgroundColor: iBackgroundCircleIcon,
          child: Icon(
            Icons.notifications,
            size: 80,
            color: Colors.black26,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Text('لا يوجد إشعارات',
              style: Theme.of(context).textTheme.headline4),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 50,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'أعاده المحاولة',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: iMarginCard - 10,
                ),
                Icon(Icons.repeat, color: Colors.blue),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
