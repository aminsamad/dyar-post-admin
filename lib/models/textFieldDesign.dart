import 'package:dyarpost_admin/models/contans.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;

  const CustomTextField({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey[400]),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        textAlign: TextAlign.end,
        cursorRadius: Radius.circular(10),
        textDirection: TextDirection.ltr,
        keyboardType: TextInputType.text,
        maxLines: 1,
        style: TextStyle(color: Color(0xff424242), fontSize: 15),
        cursorColor: primaryColor,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: Color(0xff9e9e9e)),
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5)),
      ),
    );
  }
}
