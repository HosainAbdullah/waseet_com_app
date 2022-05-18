import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/notifications_screen/model/notifiction_model.dart';
import 'package:waseet_com_app/screens/notifications_screen/widget/not_notifiction.dart';
import 'package:waseet_com_app/screens/notifications_screen/widget/yes_notifiction.dart';
import 'package:waseet_com_app/screens/widgets/alltextapp.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<NotifictionsModel> item = [
      NotifictionsModel('عقد جديد',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 1),
      NotifictionsModel('شكوي جديده',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 2),
      NotifictionsModel('قبول عقد جديد',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 3),
      NotifictionsModel('رفض عقد',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 4),
      NotifictionsModel('قبول عقد جديد',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 3),
      NotifictionsModel('عقد جديد',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 1),
      NotifictionsModel('رفض عقد',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 4),
      NotifictionsModel('شكوي جديده',
          'نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا نص الاشعار هنا', 2),
    ];
    bool isData = true;
    return Directionality(
      textDirection: TextDirection.rtl,
      // child: Padding(
      //   padding: const EdgeInsets.all(iPaddingAllScreen),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
                top: iPaddingAllScreen, right: iPaddingAllScreen),
            child: LabalScreens(
              title: 'الاشعارات',
            ),
          ),
          isData
              ? Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(iPaddingAllScreen),
                    itemCount: item.length,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      final items = item[index];
                      return buildNotifiction(items, context);
                    },
                  ),
                )
              : const NotNotifiction()
        ],
      ),
      // ),
    );
  }
}
