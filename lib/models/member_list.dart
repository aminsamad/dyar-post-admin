import 'package:flutter/material.dart';

class MemberListCard extends StatelessWidget {
  final String name;
  final String email;
  final String password;
  final String uid;
  final Function press;

  const MemberListCard(
      {Key key, this.name, this.email, this.password, this.uid, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE0E0E0)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: Offset(3, 2), blurRadius: 20, color: Colors.grey[300]),
          ],
        ),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Color(0xffe0e0e0),
              onTap: press,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffff8f00), Color(0xffffb300)],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5))),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ],
                        )),
                      ])),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        email,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontFamily: "english"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        password,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontFamily: "english"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        uid,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontFamily: "english"),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
