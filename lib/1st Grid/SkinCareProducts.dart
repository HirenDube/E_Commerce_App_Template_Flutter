import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SkinCareProducts extends StatefulWidget {
  const SkinCareProducts({Key? key}) : super(key: key);

  @override
  State<SkinCareProducts> createState() => _SkinCareProductsState();
}

class _SkinCareProductsState extends State<SkinCareProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Skin Care Products"),
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
                    child: Image.asset("assets/productsPng/bodyLotion.png"),
                  ),
                  Text(
                    "Body Lotions",
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
                    child: Image.asset("assets/productsPng/facewash.png"),
                  ),
                  Text(
                    "Face Wash",
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
                    child: Image.asset("assets/productsPng/haircare.png"),
                  ),
                  Text(
                    "Hair Care Products",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
