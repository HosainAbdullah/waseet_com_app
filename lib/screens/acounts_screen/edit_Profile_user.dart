import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/create_contract_screen/widget/lebal_text_field.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_service.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class EditProfileUser extends StatefulWidget {
  const EditProfileUser({Key? key}) : super(key: key);

  @override
  _EditProfileUserState createState() => _EditProfileUserState();
}

class _EditProfileUserState extends State<EditProfileUser> {
  List<UserModel>? users = [];

  Future getUser() async {
    users = await DataApiDatabase().fetchData();
  }

  @override
  void initState() {
    super.initState();
    getUser();
    print(users);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'تعديل الحساب', true),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: iPaddingAllScreen),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: iPaddingAllScreen,
                ),
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/image/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: iWhite,
                        size: 50,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: iPaddingAllScreen,
                ),
                Center(
                  child: Text(
                    'cxzzzzzzzzz',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const SizedBox(
                  height: iPaddingAllScreen,
                ),
                const TextLabalField(
                  title: 'الاسم',
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: iPaddingAllScreen - 15),
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'الاسم',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iPaddingAllScreen,
                ),
                const TextLabalField(
                  title: 'رقم الجوال',
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: iPaddingAllScreen - 15),
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'رقم الجوال',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iPaddingAllScreen,
                ),
                const TextLabalField(
                  title: 'كلمه المرور',
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: iPaddingAllScreen - 15),
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'كلمه المرور',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iPaddingAllScreen,
                ),
                const TextLabalField(
                  title: ' أعاده كلمه المرور',
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: iPaddingAllScreen - 15),
                  padding: const EdgeInsets.only(
                      right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                  decoration: BoxDecoration(
                    color: iBackgroundTextFeild,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: Theme.of(context).textTheme.bodyLarge,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'أعاده كلمه المرور',
                    ),
                  ),
                ),
                const SizedBox(
                  height: iPaddingAllScreen,
                ),
                ButtonAllApp(
                  title: 'حفظ التعديلات',
                  onClick: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
