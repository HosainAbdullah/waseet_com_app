import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/home_screen/model/home_model.dart';
import 'package:waseet_com_app/screens/home_screen/widget/appbarhome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ModelHome> item = [
    ModelHome(Icons.post_add_outlined, 'أنشاء عقد', Colors.green,
        AppRoutes.createcontract.name),
    ModelHome(Icons.description_outlined, 'طلباتي', Colors.blue,
        AppRoutes.clientrequests.name),
    ModelHome(Icons.group_add_outlined, 'طلبات العملاء', Colors.brown,
        AppRoutes.showmessages.name),
    ModelHome(
        Icons.person_outlined, 'حسابي', Colors.cyan, AppRoutes.homeacount.name),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(context),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/mans.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1 / 1.3,
                ),
                itemCount: item.length,
                // scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(iPaddingAllScreen),
                itemBuilder: (BuildContext context, int index) {
                  final items = item[index];
                  return Card(
                    margin: EdgeInsets.zero,
                    elevation: 5,
                    child: Container(
                      // width: (MediaQuery.of(context).size.width / 2.4),
                      // height: 300,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          color: items.colors,
                          width: 3,
                        ),
                      )),
                      child: InkWell(
                        highlightColor: Colors.amber.shade100,
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          Navigator.pushNamed(context, items.rout!);
                        },
                        child: Column(
                          children: [
                            const SizedBox(
                              height: iMarginCard,
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: items.colors.withOpacity(0.2),
                              child: Icon(
                                items.icon,
                                color: items.colors,
                                size: 45,
                              ),
                            ),
                            const SizedBox(
                              height: iMarginCard,
                            ),
                            Text(
                              items.title,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
