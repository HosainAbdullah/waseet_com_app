import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/logoapp.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'عن التطبيق', true),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(iPaddingAllScreen),
      child: Column(
        children: [
          const Expanded(
            flex: 3,
            child: LogoApp(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Text(
                  'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق ',
                ),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
                const Text(
                    'عن التطبيق عن التطبيق عن التطبيق عن التطبق عن التطبيق '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
