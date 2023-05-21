import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeDecorItems extends StatefulWidget {
  const HomeDecorItems({Key? key}) : super(key: key);

  @override
  State<HomeDecorItems> createState() => _HomeDecorItemsState();
}

class _HomeDecorItemsState extends State<HomeDecorItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Decore Products"),
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
                    child: Image.asset("assets/productsPng/vase.png"),
                  ),
                  Text(
                    "Vases & Flowers",
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
                    child: Image.asset("assets/productsPng/furniture.png"),
                  ),
                  Text(
                    "Furniture",
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
                    child: Image.asset("assets/productsPng/Painting.png"),
                  ),
                  Text(
                    "Paintings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
