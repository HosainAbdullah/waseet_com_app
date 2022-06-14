// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/client_requests/model/models_acd.dart';
import 'package:waseet_com_app/screens/client_requests/widget/tabsbutton.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';

class ClientRequests extends StatefulWidget {
  ClientRequests({Key? key, this.typeAcdShow}) : super(key: key);

  int? typeAcdShow;

  @override
  _ClientRequestsState createState() => _ClientRequestsState();
}

class _ClientRequestsState extends State<ClientRequests>
    with SingleTickerProviderStateMixin {
  final double hiegthImg = 200;
  final double hiegthBox = 60;
  late String titles;

  List<ModelAcd> items = [
    ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'تحت الانتظار', 1),
    ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'مكتمل', 0),
    ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'قيدالتنفيذ', 2),
    ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'تحت الانتظار', 1),
    ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'قيدالتنفيذ', 2),
  ];

  List<ModelItem> itemsLabal = [
    ModelItem('تحت الانتظار', '3 عقود', Colors.blue, () {}),
    ModelItem('قيد التنفيذ', '3 عقود', Colors.orange, () {}),
    ModelItem('المكتملة', '3 عقود', Colors.green, () {}),
  ];

  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: itemsLabal.length, vsync: this);
    super.initState();

    widget.typeAcdShow = 0;
    titles = 'جميع العقود';
  }

  Color colorBack = Colors.white;
  Color colorBack1 = Colors.white;
  Color colorBack2 = Colors.white;
  Color colorBack3 = Colors.white;
  @override
  Widget build(BuildContext context) {
    final z;
    return Scaffold(
      appBar: buildAppBar(context, 'طلباتي', true),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: hiegthImg,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/tal.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: TabBar(
                        // padding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.symmetric(horizontal: 5),
                        indicatorSize: TabBarIndicatorSize.tab,
                        automaticIndicatorColorAdjustment: false,
                        indicatorPadding: EdgeInsets.zero,
                        onTap: (val) {
                          if (val == 0) {
                            setState(() {
                              colorBack1 = Colors.blue;
                              colorBack2 = Colors.white;
                              colorBack3 = Colors.white;
                              titles = 'تحت الانتضار ';
                            });
                          } else if (val == 1) {
                            setState(() {
                              colorBack1 = Colors.white;
                              colorBack2 = Colors.amber;
                              colorBack3 = Colors.white;
                              titles = 'قيد التنفيذ';
                            });
                          } else if (val == 2) {
                            setState(() {
                              colorBack1 = Colors.white;
                              colorBack2 = Colors.white;
                              colorBack3 = Colors.green;
                              titles = 'المكتمله';
                            });
                          }
                        },
                        indicatorColor: Colors.transparent,
                        controller: _controller,
                        tabs: [
                          TabsButton(
                            title: 'تحت الانتضار',
                            subTitle: '3 عقود',
                            colors: Colors.blue,
                            backgroundColors: colorBack1,
                            onClick: () {},
                          ),
                          TabsButton(
                            title: 'قيدالتنفيذ',
                            subTitle: '3 عقود',
                            colors: Colors.amber,
                            backgroundColors: colorBack2,
                            onClick: () {},
                          ),
                          TabsButton(
                            title: 'المكتمله',
                            subTitle: '3 عقود',
                            colors: Colors.green,
                            backgroundColors: colorBack3,
                            onClick: () {},
                          ),
                        ]

                        // List.generate(itemsLabal.length, (index) {
                        //   final us = itemsLabal[index];
                        //   return TabsButton(
                        //     title: us.itemLabal,
                        //     subTitle: us.numAcd,
                        //     colors: us.colors,
                        //     onClick: us.onClik,
                        //   );
                        // }),
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),

            ///=================================

            Padding(
              padding: const EdgeInsets.only(
                  right: iMarginCard, bottom: iMarginCard),
              child: Text(
                titles,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _controller,
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(iPaddingAllScreen),
                  itemBuilder: (context, index) {
                    // final itemsAcd = items[index];
                    if (items[index].acdStatus == 1) {
                      final i = items[index];
                      // z = items.length;
                      print(i);
                    }

                    return Padding(
                      padding: const EdgeInsets.only(bottom: iMarginCard - 10),
                      child: buildItems(context),
                    );
                  },
                ),
                Container(
                  child: Text('${_controller}'),
                ),
                Container(
                  child: Text('data'),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget buildItems(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
          border: Border.all(width: 1, color: Colors.black12),
        ),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.green,
                width: 5,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: iMarginCard - 5),
                title: Text(
                  'تصميم 15 صفحه خاصه بالبيتزا',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                subtitle: Text(
                  'قيد التنفيذ',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: iMarginCard - 5),
                child: Row(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
