import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class SucceedShowModel extends StatelessWidget {
  const SucceedShowModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: FittedBox(
                fit: BoxFit.none,
                child: Container(
                  height: 4,
                  constraints: const BoxConstraints(maxWidth: 60),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Text(
              'العقد',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: iMarginCard,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue.shade100,
              child: const Icon(
                Icons.check_rounded,
                size: 100,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: iMarginCard * 1.5,
            ),
            Center(
              child: Text(
                'تم قبول عرضك بنجاح',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(
              height: iMarginCard * 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(iPaddingAllScreen - 10),
              child: ButtonAllApp(
                title: 'التواصل مع طالب الخدمة',
                onClick: () {},
              ),
            ),
            const SizedBox(
              height: iMarginCard,
            ),
          ],
        ),
      ),
    );
  }
}
