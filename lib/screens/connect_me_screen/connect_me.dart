import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/button_all_app.dart';

class ConnectMe extends StatelessWidget {
  const ConnectMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'تواصل معنا', true),
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
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.support_agent_sharp,
                size: 150,
                color: Colors.blue.shade300,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              padding: const EdgeInsets.only(
                  right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: null,
                style: Theme.of(context).textTheme.bodyLarge,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'الاسم ',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              padding: const EdgeInsets.only(
                  right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
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
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              // height: 50,
              padding: const EdgeInsets.only(
                  right: iPaddingAllScreen, left: iPaddingAllScreen - 10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: null,
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 8,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'هنا نص الرسالة',
                ),
              ),
            ),
            const SizedBox(
              height: iMarginCard,
            ),
            Padding(
              padding: const EdgeInsets.all(iPaddingAllScreen),
              child: ButtonAllApp(
                title: 'ارسال',
                onClick: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
