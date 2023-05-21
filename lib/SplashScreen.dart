import 'package:e_commerce_ui_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SScreen extends StatefulWidget {
  const SScreen({Key? key}) : super(key: key);

  @override
  State<SScreen> createState() => _SScreenState();
}

class _SScreenState extends State<SScreen> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(
        Duration(milliseconds: 500),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => MagicCommerceApp()))
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemBackground,
      body: SafeArea(
        child: Center(
            child: Image.asset("assets/p-mart-logo.png",
                height: MediaQuery.of(context).size.width,width: MediaQuery.of(context).size.width,
                )),
      ),
    );
  }
}
