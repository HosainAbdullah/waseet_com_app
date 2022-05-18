import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/widgets/alltextapp.dart';

class Complaints extends StatelessWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orange[900],
          child: const Icon(
            Icons.add_rounded,
            size: 50,
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: iPaddingAllScreen, right: iPaddingAllScreen),
            child: const LabalScreens(title: 'الشكاوي'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFE5E0A1),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              border: Border.all(width: 1.0, color: const Color(0xff2f363d)),
            ),
            child: TabBar(
              unselectedLabelColor: iBackgroundButton,
              unselectedLabelStyle: Theme.of(context).textTheme.bodyText2,
              indicator: const BoxDecoration(
                color: iBackgroundButton,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              tabs: [
                const Tab(
                  text: 'مفتوح',
                ),
                const Tab(
                  text: 'قيد الدراسة',
                ),
                const Tab(
                  text: 'مغلق',
                ),
              ],
            ),
          ),
          // ),
          Expanded(
            child: TabBarView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text('مفتوح'),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        padding: const EdgeInsets.all(iPaddingAllScreen),

                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Card(
                                margin: EdgeInsets.zero,
                                child: Container(
                                  width: double.infinity,
                                  height: 80,
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: Colors.amber,
                                        width: 5,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'تصميم 15 صفحه خاصه بالبيتزا',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      const SizedBox(
                                        height: iMarginCard - 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'مفتوح',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(color: Colors.amber),
                                          ),
                                          const Spacer(),
                                          Text('15 - 12 - 2020',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text('قيد الدراسه'),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        padding: const EdgeInsets.all(iPaddingAllScreen),

                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Card(
                                margin: EdgeInsets.zero,
                                child: Container(
                                  width: double.infinity,
                                  height: 80,
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: Colors.green,
                                        width: 5,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('تصميم 15 صفحه خاصه بالبيتزا'),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('قيد الدراسه'),
                                          Spacer(),
                                          Text('15 - 12 - 2020'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text('مغلق'),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        padding: const EdgeInsets.all(iPaddingAllScreen),

                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Card(
                                margin: EdgeInsets.zero,
                                child: Container(
                                  width: double.infinity,
                                  height: 80,
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: Colors.red,
                                        width: 5,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('تصميم 15 صفحه خاصه بالبيتزا'),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('مغلق'),
                                          Spacer(),
                                          Text('15 - 12 - 2020'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
