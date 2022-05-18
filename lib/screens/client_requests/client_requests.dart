import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';

class ClientRequests extends StatefulWidget {
  const ClientRequests({Key? key}) : super(key: key);

  @override
  _ClientRequestsState createState() => _ClientRequestsState();
}

class _ClientRequestsState extends State<ClientRequests> {
  final double hiegthImg = 200;
  final double hiegthBox = 80;

  GlobalKey _key1 = GlobalKey();
  GlobalKey _key2 = GlobalKey();
  GlobalKey _key3 = GlobalKey();

  int _currcntSelection = 1;
  double _selectorPositonX = 16.0;
  _selectedItme(int id) {
    _currcntSelection = id;

    GlobalKey? selectedGlobalKey;
    switch (id) {
      case 1:
        selectedGlobalKey = _key1;
        break;
      case 2:
        selectedGlobalKey = _key2;
        break;
      case 3:
        selectedGlobalKey = _key3;
        break;
    }
    _setWidgetPositonX(selectedGlobalKey!);
    setState(() {});
  }

  _setWidgetPositonX(GlobalKey selectedKey) {
    // late RenderBox? widgetRenderBox =
    // selectedKey?.currentContext.findRenderObject();
  }

  @override
  Widget build(BuildContext context) {
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
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.white]),
                  ),
                ),
                Positioned(
                  top: 160,
                  child: Row(
                    children: [
                      InkWell(
                        key: _key1,
                        onTap: () => _selectedItme(1),
                        child: Container(
                          width: (MediaQuery.of(context).size.width) / 3.5,
                          height: hiegthBox,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                // offset: Offset(1, 1),
                                color: Colors.black,
                                blurRadius: 10,
                                spreadRadius: -5,
                              )
                            ],
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('تحت الانتظار'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    '3 عقود',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        key: _key2,
                        onTap: () => _selectedItme(2),
                        child: Container(
                          width: (MediaQuery.of(context).size.width) / 3.5,
                          height: hiegthBox,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                // offset: Offset(1, 1),
                                color: Colors.black,
                                blurRadius: 10,
                                spreadRadius: -5,
                              )
                            ],
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.orange,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('قيد التنفيذ'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    '3 عقود',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        key: _key3,
                        onTap: () => _selectedItme(3),
                        child: Container(
                          width: (MediaQuery.of(context).size.width) / 3.5,
                          height: hiegthBox,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                // offset: Offset(1, 1),
                                color: Colors.black,
                                blurRadius: 10,
                                spreadRadius: -5,
                              )
                            ],
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('المكتملة'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    '3 عقود ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text('جميع العقود'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                // shrinkWrap: true,
                padding: const EdgeInsets.all(iPaddingAllScreen),

                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            border: Border.all(width: 1, color: Colors.black12),
                            // boxShadow: [
                            //   BoxShadow(
                            //     // offset: Offset(1, 1),
                            //     color: Colors.black,
                            //     blurRadius: 10,
                            //     spreadRadius: -5,
                            //   )
                            // ],
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
                                // const Text(
                                //   'تصميم 15 صفحة خاصة بالبيتزا',
                                //   style: TextStyle(fontSize: 17),
                                // ),
                                const ListTile(
                                  title: Text('تصميم 15 صفحه خاصه بالبيتزا'),
                                  subtitle: Text('قيد التنفيذ'),
                                ),
                                Row(
                                  children: [],
                                )
                              ],
                            ),
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
            )
          ],
        ),
      ),
    );
  }
}
