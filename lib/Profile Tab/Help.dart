import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Help")),
        body: ListView(
          children: [
            "Terms & Conditions",
            "Privacy Policy",
            "Return Policy",
            "Replacement Policy",
            "Refund Policy",
            "Report a Bug",
            "Lincences"
          ]
              .map((e) => ListTile(
                    title: Text(e),
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Appropriate Action shoud be performed here");
                    },
                    trailing: Icon(Icons.chevron_right),
                  ))
              .toList(),
        ));
  }
}
