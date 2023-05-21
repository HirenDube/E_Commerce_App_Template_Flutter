import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Electronics extends StatefulWidget {
  const Electronics({Key? key}) : super(key: key);

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Electronics"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () => Fluttertoast.showToast(
                  msg: "Resepective product section should open here"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    width: 115,
                    height: 115,
                    child: Image.asset("assets/productsPng/mobiles.png"),
                  ),
                  Text(
                    "Smartphones",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () => Fluttertoast.showToast(
                  msg: "Resepective product section should open here"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    width: 115,
                    height: 115,
                    child: Image.asset("assets/productsPng/gamingConsole.png"),
                  ),
                  Text(
                    "Gaming Consoles",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () => Fluttertoast.showToast(
                  msg: "Resepective product section should open here"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    width: 115,
                    height: 115,
                    child: Image.asset("assets/productsPng/PC.png"),
                  ),
                  Text(
                    "Personal Computers",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
