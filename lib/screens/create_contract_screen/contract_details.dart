import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/create_contract_screen/succeed_showmodel.dart';
import 'package:waseet_com_app/screens/create_contract_screen/widget/appbar.dart';
import 'package:waseet_com_app/screens/create_contract_screen/widget/detalis_service.dart';
import 'package:waseet_com_app/screens/create_contract_screen/widget/users_and_service.dart';
import 'package:waseet_com_app/screens/widgets/alltextapp.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class ContractDetails extends StatelessWidget {
  const ContractDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContractDetails(context),
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
          padding: const EdgeInsets.symmetric(horizontal: iMarginCard),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: LabalScreens(title: 'تفاصيل العقد'),
              ),
              const DataUsersAndService(),
              const SizedBox(
                height: iMarginCard - 10,
              ),
              const DetalisService(),
              const SizedBox(
                height: 10,
              ),
              Text(
                'المرفقات',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.all(iPaddingAllScreen - 5),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        // border: Border.all(width: 1, color: Colors.black26),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.camera_alt_sharp,
                        size: 50,
                        color: Colors.black38,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonAllApp(
                title: 'تسليم المشروع',
                onClick: () {
                  showModalBottomSheet(
                    isDismissible: false,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (context) => const SucceedShowModel(),
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
