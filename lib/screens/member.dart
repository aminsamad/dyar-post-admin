import 'package:dyarpost_admin/models/contans.dart';
import 'package:dyarpost_admin/models/member_list.dart';
import 'package:flutter/material.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("لیستی ئه‌ندامه‌كان"),
          centerTitle: true,
          backgroundColor: primaryColor,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ]),

      //body
      body: ListView(
        children: <Widget>[
          //item_lists
          MemberListCard(
            name: "Amin Samad",
            email: "aminsamad@gmail.com",
            password: "123456",
            press: () {},
            uid: "R5wBXsVbuHhRO2visVL2XrheO0T2",
          ),
          MemberListCard(
            name: "Amin Samad",
            email: "aminsamad@gmail.com",
            password: "123456",
            press: () {},
            uid: "R5wBXsVbuHhRO2visVL2XrheO0T2",
          ),
          MemberListCard(
            name: "Amin Samad",
            email: "aminsamad@gmail.com",
            password: "123456",
            press: () {},
            uid: "R5wBXsVbuHhRO2visVL2XrheO0T2",
          ),
          MemberListCard(
            name: "Amin Samad",
            email: "aminsamad@gmail.com",
            password: "123456",
            press: () {},
            uid: "R5wBXsVbuHhRO2visVL2XrheO0T2",
          ),
          MemberListCard(
            name: "Amin Samad",
            email: "aminsamad@gmail.com",
            password: "123456",
            press: () {},
            uid: "R5wBXsVbuHhRO2visVL2XrheO0T2",
          ),
          MemberListCard(
            name: "Amin Samad",
            email: "aminsamad@gmail.com",
            password: "123456",
            press: () {},
            uid: "R5wBXsVbuHhRO2visVL2XrheO0T2",
          ),
        ],
      ),
    );
  }
}
