import 'package:e_commerce_ui_app/CartTab/Bill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Cart"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey),
                        width: 125,
                        height: 90,
                        child: Image.asset(
                          "assets/images/iphone.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 170,
                          child: Text.rich(TextSpan(
                              text: "Apple iPhone 14 Pro Max\n\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              children: [
                                TextSpan(
                                  text: "Rs. 1,49,990",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.systemGreen,
                                      fontSize: 18),
                                ),
                              ])),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.delete)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey),
                        width: 125,
                        height: 90,
                        child: Image.asset(
                          "assets/images/macbookpro.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 170,
                          child: Text.rich(TextSpan(
                              text: "MacBook Pro M2 (1 TB)\n\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              children: [
                                TextSpan(
                                  text: "Rs. 2,49,900",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.systemGreen,
                                      fontSize: 18),
                                ),
                              ])),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.delete)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Bill())),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Buy Now",style: TextStyle(fontSize: 20),),
                    ))
              ],
            )
          ],
        ));
  }
}
