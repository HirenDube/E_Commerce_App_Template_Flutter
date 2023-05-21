import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bill"),
        ),
        body: Column(
          children: [SizedBox(height: 10,),
            Text(
              "Your Bill",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 10,),Text(
              "Rs. 45,000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: CupertinoColors.systemGreen),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Pay Online (via UPI)",style: TextStyle(fontSize: 20),),
                )),SizedBox(height: 10,),
                ElevatedButton(onPressed: () {}, child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Pay Offline (COD)",style: TextStyle(fontSize: 20)),
                )),
              ],
            )
          ],
        ));
  }
}
