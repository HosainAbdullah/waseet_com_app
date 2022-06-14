import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/services/init_boxes_hive.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isCheck;
    File? img;

    return Stack(
      children: [
        ValueListenableBuilder<Box<UserModel>>(
          valueListenable: Boxes.getBoxUsers().listenable(),
          builder: (context, boxData, child) {
            final user = boxData.values.toList().last;
            if (user.imageIdentity == 'null') {
              isCheck = false;
            } else {
              isCheck = true;
              img = File.fromUri(Uri.parse(user.imageIdentity!));
            }
            return Card(
              elevation: 2,
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: isCheck!
                              ? DecorationImage(
                                  image: FileImage(
                                    img!,
                                  ),
                                  fit: BoxFit.cover,
                                )
                              : const DecorationImage(
                                  image: AssetImage('assets/image/profile.jpg'),
                                  fit: BoxFit.cover,
                                ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline6,
                        children: [
                          TextSpan(text: user.userName),
                          const TextSpan(text: '\n'),
                          TextSpan(text: user.phoneNumber),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 10,
          child: Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              Container(
                width: (MediaQuery.of(context).size.width) / 2.5,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: const Center(
                  child: Text(
                    'الرصيد المتاح 12738 ر.س',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: (MediaQuery.of(context).size.width) / 2.5,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: const Center(
                  child: Text(
                    'الرصيد المحجوز 12738 ر.س',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
