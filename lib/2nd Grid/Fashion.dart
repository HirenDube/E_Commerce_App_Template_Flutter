import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Fashion extends StatefulWidget {
  const Fashion({Key? key}) : super(key: key);

  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fashion"),
        ),
        body: ListView(
          children: [
            "Allen Solly",
            "Peter England",
            "Park Avenue",
            "Levi's",
            "Louis Philippe",
            "Van Heusen",
            "Raymond",
            "Global Desi",
            "Spaykar",
            "ZARA",
            "Tommy Hil figer",
            "Indian Terrain",
            "Numero Uno"
          ]
              .map((e) => ListTile(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Resepective Brand Store should open here");
                    },
                    title: Text(e),
                    trailing: Icon(Icons.chevron_right),
                  ))
              .toList(),
        ));
  }
}
