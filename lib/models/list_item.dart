import 'package:dyarpost_admin/models/contans.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String gashtu;
  final String naweKalayaka;
  final String kat;
  final String zh_taxi;
  final String shwen;
  final String nrx;
  final String zh_wargr;
  final Function press;

  const ListCard(
      {Key key,
      this.gashtu,
      this.naweKalayaka,
      this.kat,
      this.zh_taxi,
      this.shwen,
      this.nrx,
      this.zh_wargr,
      this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 230,
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
                            IconButton(
                              onPressed: press,
                              highlightColor: Colors.transparent,
                              splashColor: Color(0xffe0e0e0),
                              icon: Icon(Icons.sort, color: Colors.white),
                            ),
                            Text(
                              gashtu,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ))
                      ])),
                  SizedBox(height: 10),
                  Text(
                    naweKalayaka,
                    style: TextStyle(
                      color: Color(0xff616161),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 1,
                      width: double.infinity,
                      color: activeIconColor),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/img/clock.png",
                          color: bottomNavIconColor,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        Text(
                          kat,
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          zh_taxi,
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          "assets/img/taxi.png",
                          color: bottomNavIconColor,
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 1,
                      width: double.infinity,
                      color: activeIconColor),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/img/location.png",
                          color: bottomNavIconColor,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        Text(
                          shwen,
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          nrx,
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          "assets/img/money.png",
                          color: bottomNavIconColor,
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 1,
                      width: double.infinity,
                      color: activeIconColor),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          zh_wargr,
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          "assets/img/ic_phone_black.png",
                          color: bottomNavIconColor,
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
