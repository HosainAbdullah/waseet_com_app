import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class AnswerQuestions extends StatelessWidget {
  const AnswerQuestions({Key? key, required this.questions}) : super(key: key);
  final String questions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 20,
              ))
        ],
      ),
      body: Body(questions: questions),
    );
  }
}

class Body extends StatelessWidget {
  Body({
    Key? key,
    required this.questions,
  }) : super(key: key);
  final String questions;
  final String answer =
      ' أجابه السوال هنا أجابه السوال هنا أجابة السوال هنا أجابه السوال هنا';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Padding(
        padding: const EdgeInsets.all(iPaddingAllScreen),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            Text(
              questions,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    answer,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
