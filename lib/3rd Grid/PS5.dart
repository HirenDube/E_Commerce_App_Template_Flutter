import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PS5 extends StatefulWidget {
  const PS5({Key? key}) : super(key: key);

  @override
  State<PS5> createState() => _PS5State();
}

class _PS5State extends State<PS5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PS5"),
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
                        image: AssetImage("assets/images/ps5.png"),
                        fit: BoxFit.cover)),
              ),
              Text(
                "Play Station 5",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "\nRs. 50,000\n",
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
                      text: "Sony Play Station \n\n",
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
                          """Maximize your play sessions with near instant load times for installed PS5 games. The custom integration of the PS5 console's systems lets creators pull data from the SSD so quickly that they can design games in ways never before possible. Immerse yourself in worlds with a new level of realism as rays of light are individually simulated, creating true-to-life shadows and reflections in supported PS5 games.""",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ])),              SizedBox(height: 10,),

              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "'Add to Cart' button pressed");
                      },
                      child: Padding(
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
