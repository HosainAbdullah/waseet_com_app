import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/common_questions_screen/answer_question.dart';

class CommonQuestions extends StatelessWidget {
  const CommonQuestions({Key? key}) : super(key: key);

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
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  List<String> questions = [
    'كيف يمكنني أنشاء عقد جديد ؟',
    'كيف يمكنني عرض تفاصيل الفاتوره ؟',
    'كيف يمكنني إنشاء عقد جديد ؟',
    'كيف يمكنني عرض تفاصيل الفاتورة ؟',
    'كيف يمكنني إنشاء عقد جديد ؟',
    'كيف يمكنني عرض تفاصيل الفاتورة ؟',
    'كيف يمكنني إنشاء عقد جديد ؟',
    'كيف يمكنني عرض تفاصيل الفاتورة ؟',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      // child: Padding(
      //   padding: const EdgeInsets.all(iPaddingAllScreen),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
                top: iPaddingAllScreen, right: iPaddingAllScreen),
            child: Text(
              'الأسئلة الشائعه',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(iPaddingAllScreen),
              itemCount: questions.length,
              scrollDirection: Axis.vertical,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: const Icon(Icons.question_mark_outlined),
                  ),
                  title: Text(
                    questions[index],
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.pink,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnswerQuestions(
                            questions: questions[index],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
