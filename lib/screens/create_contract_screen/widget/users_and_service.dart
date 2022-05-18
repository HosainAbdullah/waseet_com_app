import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class DataUsersAndService extends StatelessWidget {
  const DataUsersAndService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
        color: iWhite,
        border: Border.all(width: 1, color: iBlack.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(iPaddingAllScreen - 5),
            alignment: Alignment.centerRight,
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: iWhite,
              border: Border.all(width: 0, color: iBlack.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'تصميم 15 صفحة خاصه بالبيتزا',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: iMarginCard,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.access_alarm,
                            size: iIconsSize,
                          ),
                          const SizedBox(
                            width: iMarginCard - 15,
                          ),
                          Text(
                            '12345678',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.access_alarm,
                            size: iIconsSize,
                          ),
                          const SizedBox(
                            width: iMarginCard - 15,
                          ),
                          Text(
                            '25034 ر.س',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.date_range_outlined,
                            size: 20,
                          ),
                          const SizedBox(
                            width: iMarginCard - 15,
                          ),
                          Text(
                            '21 يوم',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title: Text(
              'الطرف الاول',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black26),
            ),
            subtitle: Text(
              'محمد أحمد حسام الدين',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            trailing: const Text('966554837738+'),
          ),
          ListTile(
            title: Text(
              'الطرف الاول',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black26),
            ),
            subtitle: Text(
              'محمد أحمد حسام الدين',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            trailing: const Text('966554837738+'),
          ),
        ],
      ),
    );
  }
}
