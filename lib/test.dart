import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as sysPath;
import 'package:path/path.dart' as paths;
import 'dart:io';

class Test extends StatefulWidget {
  Test({Key? key, required this.imgName}) : super(key: key);
  final String imgName;
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  File? oldPath;
  @override
  void initState() {
    if (widget.imgName != null) {
      oldPath = File.fromUri(Uri.parse(widget.imgName));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: oldPath == null
                ? const FlutterLogo()
                : Image.file(
                    oldPath!,
                    height: 200,
                    width: 200,
                  ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('data'))
        ],
      ),
    );
  }
}
