import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toys extends StatefulWidget {
  const Toys({Key? key}) : super(key: key);

  @override
  State<Toys> createState() => _ToysState();
}

class _ToysState extends State<Toys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Toys"),
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
                    child: Image.asset("assets/productsPng/stuffedAnimal.png"),
                  ),
                  Text(
                    "Stuffed Animals",
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
                    child: Image.asset("assets/productsPng/creativityToys.png"),
                  ),
                  Text(
                    "Creativity Toys",
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
                    child: Image.asset("assets/productsPng/dolls.png"),
                  ),
                  Text(
                    "Barbie Dolls",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
