import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class S23 extends StatefulWidget {
  const S23({Key? key}) : super(key: key);

  @override
  State<S23> createState() => _S23State();
}

class _S23State extends State<S23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("S23"),
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
                        image: AssetImage("assets/images/s23ultra.png"),
                        fit: BoxFit.contain)),
              ),
              Text(
                "Galaxy S23 Ultra",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "\nRs. 1,14,000\n",
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
                      text: "Samsung Galaxy \n\n",
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
                      """More innovation, less footprint – Galaxy S23 Ultra's striking symmetrical design returns with one major difference: recycled and eco-conscious materials. From the metal frame to the glass finish, it's polished with fresh new colors inspired by nature. Note's signature tool comes built in - The built-in S Pen keeps the legacy of Note alive. Plus, it helps you ditch the dependency on notebooks, making sketches and jotting notes effortless and eco-friendly.
""",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ])),              SizedBox(height: 10,),

              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {Fluttertoast.showToast(msg: "'Add to Cart' button pressed");}, child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Add to cart",style: TextStyle(fontSize: 20),),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
