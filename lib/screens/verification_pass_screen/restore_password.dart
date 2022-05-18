import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/verification_pass_screen/widget/close_button.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class RestorePassword extends StatelessWidget {
  const RestorePassword({Key? key}) : super(key: key);

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
              Row(
                children: [
                  Container(
                    width: 220,
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
                        hintText: 'رقم الجوال',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: iMarginCard - 10,
                  ),
                  Container(
                    width: 90,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
                    decoration: BoxDecoration(
                      color: iBackgroundTextFeild,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonFormField(
                      iconSize: 20,
                      style: Theme.of(context).textTheme.bodyLarge,
                      alignment: AlignmentDirectional.center,
                      items: [
                        const DropdownMenuItem<String>(
                          child: Text('999'),
                          value: '999',
                        ),
                      ],
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: '+966',
                        hintStyle: Theme.of(context).textTheme.bodyLarge,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: iMarginCard * 1.5,
              ),
              ButtonAllApp(
                title: 'استعاده كلمه المرور',
                onClick: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.verificationcode.name!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
