import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Settings"),),
        body: ListView(
          children: ["Messages","General","Notifications","Purchase History","App Language"].map((e) => ListTile(
            title: Text(e),
            onTap: (){Fluttertoast.showToast(msg: "Appropriate Action shoud be performed here");},
            trailing: Icon(Icons.chevron_right),
          )).toList(),
        )

    );
  }
}
