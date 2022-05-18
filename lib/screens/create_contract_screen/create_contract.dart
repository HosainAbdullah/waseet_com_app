import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/create_contract_screen/contract_details.dart';
import 'package:waseet_com_app/screens/create_contract_screen/widget/appbar.dart';
import 'package:waseet_com_app/screens/create_contract_screen/widget/lebal_text_field.dart';
import 'package:waseet_com_app/screens/widgets/alltextapp.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class CreateContract extends StatelessWidget {
  const CreateContract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(iPaddingAllScreen),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LabalScreens(title: 'طلب عقد جديد'),
              const SizedBox(
                height: iMarginCard - 10,
              ),
              const TextLabalField(
                title: 'ID مقدم الخدمه',
              ),
              Container(
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '#123456789 ',
                  ),
                ),
              ),
              const SizedBox(
                height: iMarginCard - 5,
              ),
              const TextLabalField(
                title: 'وصف الخدمه',
              ),
              Container(
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
                  maxLines: 8,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'وصف الخدمه ',
                  ),
                ),
              ),
              const SizedBox(
                height: iMarginCard - 5,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabalField(
                        title: 'مده الاتفاق',
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) - 30,
                        // height: 50,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                            right: iPaddingAllScreen,
                            left: iPaddingAllScreen - 10),
                        decoration: BoxDecoration(
                          color: iBackgroundTextFeild,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          controller: null,
                          style: Theme.of(context).textTheme.bodyLarge,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'مده الاتفاق',
                            suffix: Text(
                              'يوم',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: iBackgroundButton),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: iMarginCard - 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabalField(
                        title: 'مبلغ الاتفاق',
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) - 30,
                        // height: 50,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                            right: iPaddingAllScreen,
                            left: iPaddingAllScreen - 10),
                        decoration: BoxDecoration(
                          color: iBackgroundTextFeild,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          controller: null,
                          style: Theme.of(context).textTheme.bodyLarge,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'مبلغ الاتفاق',
                            suffix: Text(
                              'ر.س',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: iBackgroundButton),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: iMarginCard - 5,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: iBackgroundTextFeild,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.photo_camera_outlined),
                  ),
                  const SizedBox(
                    width: iMarginCard - 10,
                  ),
                  const TextLabalField(
                    title: 'اضافه صوره للتوضيح',
                  ),
                ],
              ),
              const SizedBox(
                height: iMarginCard * 2,
              ),
              ButtonAllApp(
                title: 'انشاء عقد',
                onClick: () {
                  Navigator.pushNamed(context, AppRoutes.contractdetails.name!);
                },
              ),
              // const SizedBox(
              //   height: 20,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
