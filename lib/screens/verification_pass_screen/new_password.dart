import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/verification_pass_screen/widget/close_button.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'استعاده كلمه المرور', false),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(iPaddingAllScreen),
          child: Column(
            children: [
              const CloasButton(),
              const SizedBox(
                height: iMarginCard * 3,
              ),
              Container(
                // width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
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
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'كلمه المرور',
                  ),
                ),
              ),
              const SizedBox(
                height: iMarginCard - 10,
              ),
              Container(
                // width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
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
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'تأكيد كلمه المرور',
                  ),
                ),
              ),
              const SizedBox(
                height: iMarginCard * 1.5,
              ),
              ButtonAllApp(
                title: 'حفظ كلمه المرور',
                onClick: () {
                  Navigator.of(context).pushNamed(AppRoutes.home.name!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
