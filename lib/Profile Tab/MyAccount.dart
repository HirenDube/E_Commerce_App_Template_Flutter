import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("MyAccount")),
      body: ListView(
        children: ["Profile Photo","Username","Address","Change Password","Change Email","Change Mobile No.","Log out",].map((e) => ListTile(
          title: Text(e),
          onTap: (){Fluttertoast.showToast(msg: "Appropriate Action shoud be performed here");},
          trailing: Icon(Icons.chevron_right),
        )).toList(),
      )
    );
  }
}
