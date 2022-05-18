import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class DetalisService extends StatelessWidget {
  const DetalisService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String text = '''
       هنا تفاصيل العقد هنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       هنا تفاصيل العقدهنا تفاصيل العقدهنا تفاصيل العقد
       
    ''';
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(iPaddingAllScreen - 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: iBlack.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
