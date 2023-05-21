import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SmartPhones extends StatefulWidget {
  const SmartPhones({Key? key}) : super(key: key);

  @override
  State<SmartPhones> createState() => _SmartPhonesState();
}

class _SmartPhonesState extends State<SmartPhones> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SmartPhones"),
        ),
        body: ListView(
          children: [
            "Samsung",
            "Apple",
            "Oppo",
            "Vivo",
            "Honor",
            "Motorola",
            "Nothing",
            "Itel",
            "Micromax",
            "Lava",
            "Nokia",
            "Infinix",
            "Lenovo",
            "Tecno",
            "Xiomi",
            "HTC",
            "Realme",
            "Karbon",
            "Asus",
            "Oneplus",
            "XOLO",
            "SONY",
            "LYF"
          ].map((e) => ListTile(onTap:(){Fluttertoast.showToast(msg: "Resepective Brand Store should open here");},title: Text(e),trailing:Icon(Icons.chevron_right),)).toList(),
        ));
  }
}
