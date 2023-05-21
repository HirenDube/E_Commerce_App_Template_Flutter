import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Iphone extends StatefulWidget {
  const Iphone({Key? key}) : super(key: key);

  @override
  State<Iphone> createState() => _IphoneState();
}

class _IphoneState extends State<Iphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Iphone"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/iphone.png"),
                        fit: BoxFit.contain)),
              ),
              Text(
                "Apple IPhone 14 Pro Max",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "\nRs. 1,39,990\n",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.systemGreen),
              ),
              Text.rich(TextSpan(
                  text: "Brand : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "Apple IPhone\n\n",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "Details : \n\n",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                      """17.00 cm (6.7-inch) Super Retina XDR display featuring Always-On and ProMotion Dynamic Island, a magical new way to interact with iPhone 48MP Main camera for up to 4x greater resolution Cinematic mode now in 4K Dolby Vision up to 30 fps Action mode for smooth, steady, handheld videos All-day battery life and up to 29 hours of video playback Vital safety technology — Crash Detection can detect a severe car crash and call for help""",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ])),
              SizedBox(height: 10,),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {Fluttertoast.showToast(msg: "'Add to Cart' button pressed");}, child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Add to cart",style: TextStyle(fontSize: 20)),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
