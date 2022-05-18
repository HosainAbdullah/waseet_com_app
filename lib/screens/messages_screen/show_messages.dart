import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/screens/messages_screen/chat_messages.dart';

class ShowMessages extends StatelessWidget {
  const ShowMessages({Key? key}) : super(key: key);

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
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
              'الرسائل',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(iPaddingAllScreen),
              itemCount: 10,
              scrollDirection: Axis.vertical,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ChatMessages(),
                      ),
                    );
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/image/us.jpg'),
                  ),
                  title: const Text(
                    'محمد أحمد حسام الدين',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.pink,
                    ),
                  ),
                  subtitle: const Text(
                    'هنا رساله هنا رساله هنا رساله هنا رساله هنا رساله هنا رساله',
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
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
