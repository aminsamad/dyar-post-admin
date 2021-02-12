import 'package:dyarpost_admin/login.dart';
import 'package:dyarpost_admin/models/contans.dart';
import 'package:dyarpost_admin/screens/createPost.dart';
import 'package:dyarpost_admin/screens/Posts.dart';
import 'package:dyarpost_admin/screens/member.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: primaryColor2,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.logout, color: Colors.white),
          onPressed: () {
            _show(context);
          },
          splashRadius: 40,
          highlightColor: Colors.white.withOpacity(0.3),
          splashColor: Colors.white.withOpacity(0.4),
        ),
        title: Text(
          "لیستی ئه‌دمین",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
          child: Column(
            children: [
              //create posts
              Container(
                height: 150,
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return CreatePost();
                    }));
                  },
                  child: Text(
                    "پۆسته‌كان",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: primaryColor,
                ),
              ),

              //edit posts
              SizedBox(height: 30),
              Container(
                height: 150,
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Posts();
                    }));
                  },
                  child: Text(
                    "به‌ڕێوه‌ بردنی پۆسته‌كان",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: primaryColor,
                ),
              ),

              //member list
              SizedBox(height: 30),
              Container(
                height: 150,
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Members();
                    }));
                  },
                  child: Text(
                    "لیستی ئه‌ندامه‌كان",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: primaryColor,
                ),
              ),

              //notifications
              SizedBox(height: 30),
              Container(
                height: 150,
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "هێشتا به‌رده‌ست نییه‌",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                  },
                  child: Text(
                    "ئاگاداركرنه‌وه‌كان",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: primaryColor,
                ),
              ),
            ],
          )),
    );
  }
}

_show(BuildContext context) {
  String email = "aminsamad4040@gmail.com";
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("داخستنی ئه‌كاونت", textAlign: TextAlign.center),
        content: Text("دڵنیای له‌ داخستنی ئه‌م ئه‌كاونته‌ ؟\n$email",
            textAlign: TextAlign.center),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return LoginScreen();
              }));
            },
            child: Text("به‌ڵێ", style: TextStyle(color: primaryColor)),
          ),
          TextButton(
            child: Text("نه‌خێر", style: TextStyle(color: primaryColor)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
