import 'package:dyarpost_admin/models/contans.dart';
import 'package:dyarpost_admin/models/list_item.dart';
import 'package:dyarpost_admin/screens/editPost.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool checkbox1 = true;
    bool checkbox2 = false;
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ListCard(
              gashtu: "gashtu",
              kat: "12:00",
              naweKalayaka: "satalight",
              nrx: "12,000",
              press: () {},
              shwen: "basrma",
              zh_taxi: "0770",
              zh_wargr: "0750",
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Text(
                  "كلیك لێره‌ بكه‌ بۆ ده‌ستكاریكردن",
                  style: TextStyle(color: Colors.grey[500]),
                  textAlign: TextAlign.center,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Checkbox(
                                      activeColor: primaryColor,
                                      splashRadius: 40,
                                      value: checkbox1,
                                      onChanged: (value) {
                                        checkbox1 = value;
                                      }),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      "زیادكردن بۆ به‌شی نه‌گه‌یشتوو",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Checkbox(
                                      activeColor: primaryColor,
                                      splashRadius: 40,
                                      value: checkbox2,
                                      onChanged: (value) {
                                        checkbox2 = value;
                                      }),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      "زیادكردن بۆ به‌شی ‌گه‌یشتوو",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return EditPost();
                                      }));
                                    },
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: IconButton(
                                        icon: Icon(Icons.delete),
                                        onPressed: () {
                                          _deleteDialog(context);
                                        },
                                      ))
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

_deleteDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("ئاگاداری", textAlign: TextAlign.center),
        content: Text("دڵنیای له‌ سڕینه‌وه‌ی ئه‌م پۆسته‌ ؟",
            textAlign: TextAlign.center),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("نا", style: TextStyle(color: primaryColor)),
          ),
          TextButton(
            child: Text("سڕینه‌وه‌", style: TextStyle(color: primaryColor)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
