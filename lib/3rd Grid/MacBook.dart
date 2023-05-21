import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MacBook extends StatefulWidget {
  const MacBook({Key? key}) : super(key: key);

  @override
  State<MacBook> createState() => _MacBookState();
}

class _MacBookState extends State<MacBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MacBook"),
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
                        image: AssetImage("assets/images/macbookpro.png"),
                        fit: BoxFit.cover)),
              ),
              Text(
                "MacBook Pro M2 (1 TB)",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "\nRs. 2,40,900\n",
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
                      text: "Apple MacBook \n\n",
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
                      """Key Features : 
- Processor: Apple M2 Pro
- Display: 35.97 cms (14.2 inches) Liquid Retina XDR
- Memory: 16GB Unified Memory RAM, 1TB SSD ROM
- OS: macOS
- Warranty: 1 Year Limited""",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ])),              SizedBox(height: 10,),

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
