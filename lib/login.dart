import 'package:dyarpost_admin/home.dart';
import 'package:dyarpost_admin/models/contans.dart';
import 'package:dyarpost_admin/models/member_list.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("چوونه‌ژوره‌وه‌",
            style: TextStyle(color: Colors.white, fontSize: 20)),
        centerTitle: true,
      ),

      //body
      body: _getPage(page),

      //bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 4,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey[400],
        currentIndex: page,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add), title: Text("دروستكردن")),
          BottomNavigationBarItem(
              icon: Icon(Icons.open_in_browser), title: Text("كردنه‌وه‌")),
          BottomNavigationBarItem(
              icon: Icon(Icons.group), title: Text("ئه‌ندامه‌كان"))
        ],
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 1:
        return //signin user
            Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/img/icon.png",
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Dyar Post",
              style: TextStyle(
                  color: Colors.grey[600], fontSize: 30, fontFamily: "english"),
            ),
            SizedBox(height: 10),
            Text(
              "چوونه‌ژووره‌وه‌ی ئه‌كاونت",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),

            //email
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey[400]),
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    cursorRadius: Radius.circular(10),
                    textDirection: TextDirection.ltr,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff424242),
                        fontFamily: "english",
                        fontSize: 16),
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Color(0xff9e9e9e)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, right: 0, top: 12, bottom: 12)),
                  ),
                )),

            SizedBox(height: 30),

            //password
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey[400]),
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    cursorRadius: Radius.circular(10),
                    textDirection: TextDirection.ltr,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff424242),
                        fontFamily: "english",
                        fontSize: 16),
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color(0xff9e9e9e)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, right: 0, top: 12, bottom: 12)),
                  ),
                )),

            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 45,
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    "كردنه‌وه‌",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  color: primaryColor,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        );

      case 2:
        return //members list
            SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/img/icon.png",
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "لیستی ئه‌ندامه‌كان",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),

              //search
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey[400]),
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      cursorRadius: Radius.circular(10),
                      textDirection: TextDirection.ltr,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      style: TextStyle(
                          color: Color(0xff424242),
                          fontFamily: "english",
                          fontSize: 16),
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Color(0xff9e9e9e)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, right: 0, top: 12, bottom: 12)),
                    ),
                  )),
              SizedBox(height: 20),

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
              SizedBox(height: 30),
            ],
          ),
        );

      default:
        return // create user
            Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/img/icon.png",
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Dyar Post",
              style: TextStyle(
                  color: Colors.grey[600], fontSize: 30, fontFamily: "english"),
            ),
            SizedBox(height: 10),
            Text(
              "چوونه‌ژووره‌وه‌ی ئه‌كاونت",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),

            //email
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey[400]),
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    cursorRadius: Radius.circular(10),
                    textDirection: TextDirection.ltr,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff424242),
                        fontFamily: "english",
                        fontSize: 16),
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: Color(0xff9e9e9e)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, right: 0, top: 12, bottom: 12)),
                  ),
                )),
            SizedBox(height: 30),

            //name
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey[400]),
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    cursorRadius: Radius.circular(10),
                    textDirection: TextDirection.ltr,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff424242),
                        fontFamily: "english",
                        fontSize: 16),
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Color(0xff9e9e9e)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, right: 0, top: 12, bottom: 12)),
                  ),
                )),

            SizedBox(height: 30),

            //password
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey[400]),
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    cursorRadius: Radius.circular(10),
                    textDirection: TextDirection.ltr,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff424242),
                        fontFamily: "english",
                        fontSize: 16),
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color(0xff9e9e9e)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, right: 0, top: 12, bottom: 12)),
                  ),
                )),

            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 45,
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    "دروستكردن",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  color: primaryColor,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return HomeScreen();
                    }));
                  },
                ),
              ),
            ),
          ],
        );
    }
  }
}
