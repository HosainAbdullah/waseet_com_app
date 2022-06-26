import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/about_app/about_app.dart';
import 'package:waseet_com_app/screens/acounts_screen/assess_screen/assess.dart';
import 'package:waseet_com_app/screens/acounts_screen/user_profile.dart';
import 'package:waseet_com_app/screens/common_questions_screen/common_questions.dart';
import 'package:waseet_com_app/screens/complaints_screen/complaints.dart';
import 'package:waseet_com_app/screens/connect_me_screen/connect_me.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_hive.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/services/init_boxes_hive.dart';

class HomeAcount extends StatelessWidget {
  const HomeAcount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'حسابي', true),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(iPaddingAllScreen),
          child: Column(
            children: [
              const UserProfile(),
              const SizedBox(
                height: iMarginCard,
              ),
              Card(
                elevation: 2,
                margin: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.editprofileuser.name!);
                      },
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(Icons.settings, color: Colors.pink),
                      ),
                      title: Text(
                        'تعديل الحساب',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          isDismissible: false,
                          // enableDrag: false,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => buildSheet(context),
                        );
                      },
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                      ),
                      title: Text(
                        'التقيمات',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Complaints(),
                          ),
                        );
                      },
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(
                          Icons.send,
                          color: Colors.blue,
                        ),
                      ),
                      title: Text(
                        'الشكاوي',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CommonQuestions(),
                        ));
                      },
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(Icons.content_copy),
                      ),
                      title: Text(
                        'الاسئلة الشائعة',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              // ),

              Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ConnectMe(),
                        ));
                      },
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                      ),
                      title: Text(
                        'تواصل معنا',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AboutApp(),
                        ));
                      },
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.indigo[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(Icons.cottage, color: Colors.indigo),
                      ),
                      title: Text(
                        'عن التطبيق',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(
                          Icons.share,
                          color: Colors.teal,
                        ),
                      ),
                      title: Text(
                        'شارك التطبيق',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //   // width: 50,
              //   decoration: BoxDecoration(
              //       border: Border.all(width: 2, color: Colors.blue),
              //       borderRadius: BorderRadius.circular(10)),
              //   child: TextButton(
              //     onPressed: () {},
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         Text(
              //           'تسجيل الخروج',
              //           style: TextStyle(
              //               color: Colors.blue, fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Icon(Icons.logout, color: Colors.blue),
              //       ],
              //     ),
              //   ),
              // ),
              ValueListenableBuilder<Box<UserModel>>(
                valueListenable: Boxes.getBoxUsers().listenable(),
                builder: (context, boxData, child) {
                  final user = boxData.values.last;
                  print(user);
                  return Center(
                    child: InkWell(
                      onTap: () {
                        // OpHiveUser().deleteUser(user);
                        // Navigator.pushNamed(context, AppRoutes.welcome.name!);
                        print(user.userName);
                      },
                      child: Text(
                        'تسجيل الخروج',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
