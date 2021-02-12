import 'package:dyarpost_admin/models/contans.dart';
import 'package:dyarpost_admin/models/textFieldDesign.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
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
        title: Text("به‌شی پۆست كردن",
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
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                  activeColor: Colors.green,
                  splashRadius: 40,
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = value;
                    });
                  }),
              SizedBox(width: 10),
              Text("گه‌یشتوو",
                  style: TextStyle(color: Colors.grey[600], fontSize: 18)),
              Expanded(child: SizedBox(width: 10)),
              Checkbox(
                  activeColor: Colors.green,
                  splashRadius: 40,
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = value;
                    });
                  }),
              SizedBox(width: 10),
              Text("نه‌گه‌یشتوو",
                  style: TextStyle(color: Colors.grey[600], fontSize: 18)),
            ],
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
              onPressed: () {},
              child: Text(
                "ناردن",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
