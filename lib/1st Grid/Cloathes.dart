import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Cloathes extends StatefulWidget {
  const Cloathes({Key? key}) : super(key: key);

  @override
  State<Cloathes> createState() => _CloathesState();
}

class _CloathesState extends State<Cloathes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cloathes"),
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
                    child: Image.asset("assets/productsPng/woman'sCloathes.png"),
                  ),
                  Text(
                    "Man",
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
                    child: Image.asset("assets/productsPng/man'sCloathes.png"),
                  ),
                  Text(
                    "Woman",
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
                    child: Image.asset("assets/productsPng/child'sCloathes.png"),
                  ),
                  Text(
                    "Kids",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
