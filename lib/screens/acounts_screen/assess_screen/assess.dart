import 'package:flutter/material.dart';

Widget buildSheet(BuildContext context) {
  return SingleChildScrollView(
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const Text(
              'اضافة تقييم',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                image: const DecorationImage(
                    image: AssetImage('assets/image/us.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'محمد أحمد حسام الدين',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              'تصميم 15 صفحة خاصة بالبيتزا',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[200]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 40,
                      Icons.star,
                      color: Colors.amber,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 40,
                      Icons.star,
                      color: Colors.amber,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 40,
                      Icons.star,
                      color: Colors.amber,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 40,
                      Icons.star,
                      color: Colors.amber,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 40,
                      Icons.star,
                      color: Colors.amber,
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('أكتب تعليقك علي التقييم'),
            Form(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      //add prefix icon

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      fillColor: Colors.grey,

                      hintText: "النص هنا",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'اضافه تقييم',
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    ),
  );
}
