import 'package:flutter/material.dart';
import 'package:waseet_com_app/const.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({Key? key}) : super(key: key);

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
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'محمد أحمد حسام الدين',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      const Text('22/2/2020 , 10:52PM'),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        // overflow: Overflow.visible,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.80,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.80,
                              ),
                              padding:
                                  const EdgeInsets.all(iPaddingAllScreen - 10),
                              margin: const EdgeInsets.only(
                                  right: iPaddingAllScreen * 3),
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 2, color: Colors.blue.shade100),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 2,
                                //     blurRadius: 2,
                                //   )
                                // ],
                              ),
                              child: const Text(
                                  'مرحباً صديقي أنا أريد الطلبيه الخاصه بك مرحباً صديقي أنا أريد الطلبيه الخاصه بك '),
                            ),
                          ),
                          Positioned(
                            top: -10,
                            right: -10,
                            child: Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(
                                  right: iPaddingAllScreen * 3),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage('assets/image/us.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: iPaddingAllScreen * 2),
                          child: Text('10:52PM'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        // overflow: Overflow.visible,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.80,
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.80),
                              padding:
                                  const EdgeInsets.all(iPaddingAllScreen - 10),
                              margin: const EdgeInsets.only(
                                  left: iPaddingAllScreen),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(10),
                                // border: Border.all(width: 2, color: Colors.blue),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 2,
                                //     blurRadius: 2,
                                //   )
                                // ],
                              ),
                              child: const Text(
                                  'نعم وبكل سرور دعنا نتفق علي السعر وقم بحجز الكمية ودفع المبلغ من حسابك'),
                            ),
                          ),
                          Positioned(
                            top: -10,
                            left: -10,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(
                                  left: iPaddingAllScreen),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage('assets/image/us.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: iPaddingAllScreen * 4),
                            child: Text('10:52PM'),
                          )),
                    ],
                  )
                ],
              ),
            ],
          )),
          _sendMessageArea(),
        ],
      ),
    );
  }
}

_sendMessageArea() {
  return Container(
    margin: const EdgeInsets.only(
        bottom: iPaddingAllScreen,
        left: iPaddingAllScreen,
        right: iPaddingAllScreen),
    padding: const EdgeInsets.symmetric(horizontal: iPaddingAllScreen - 10),
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      // border: Border.all(width: 2, color: Colors.blue),
      boxShadow: [
        BoxShadow(
          color: Colors.black45.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 10,
        )
      ],
    ),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          radius: 15,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo_camera_outlined,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          radius: 15,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          radius: 15,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          radius: 15,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.link_sharp,
              size: 15,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        const Expanded(
          child: TextField(
            decoration: InputDecoration.collapsed(hintText: 'النص هنا'),
            textCapitalization: TextCapitalization.sentences,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send),
        ),
      ],
    ),
  );
}
