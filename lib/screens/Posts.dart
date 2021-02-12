import 'package:dyarpost_admin/models/contans.dart';
import 'package:dyarpost_admin/models/post_list.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  State createState() {
    return PostsState();
  }
}

class PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("لیستی پۆسته‌كان"),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: primaryColor,
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: primaryColor,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            PostList(),
            PostList(),
            PostList(),
            PostList(),
            PostList(),
            PostList(),
            PostList(),
            PostList(),
          ],
        ),
      ),
    );
  }
}
