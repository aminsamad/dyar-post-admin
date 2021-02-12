import 'package:dyarpost_admin/models/contans.dart';
import 'package:dyarpost_admin/models/textFieldDesign.dart';
import 'package:flutter/material.dart';

class EditPost extends StatefulWidget {
  @override
  _EditPostState createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
    bool _checkbox = false;
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        toolbarHeight: 70,
        title: Text("ئیده‌یتكردنی پۆست",
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),

      //body
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        children: [
          CustomTextField(
            text: "سه‌ردێر",
          ),
          SizedBox(height: 10),
          CustomTextField(
            text: "ناوی كاڵا",
          ),
          SizedBox(height: 10),
          CustomTextField(
            text: "كات",
          ),
          SizedBox(height: 10),
          CustomTextField(
            text: "ژماره‌ ته‌له‌فۆنی ته‌كسی",
          ),
          SizedBox(height: 10),
          CustomTextField(
            text: "ژماره‌ ته‌له‌فۆنی وه‌رگر",
          ),
          SizedBox(height: 10),
          CustomTextField(
            text: "شوێن",
          ),
          SizedBox(height: 10),
          CustomTextField(
            text: "نرخ",
          ),
          SizedBox(height: 40),
          Container(
            height: 48,
            width: double.infinity,
            margin: EdgeInsets.only(right: 10, left: 10),
            child: RaisedButton(
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "نوێكردنه‌وه‌",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
