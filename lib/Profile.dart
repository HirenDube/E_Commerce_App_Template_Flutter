import 'package:e_commerce_ui_app/Profile%20Tab/Help.dart';
import 'package:e_commerce_ui_app/Profile%20Tab/About.dart';
import 'package:e_commerce_ui_app/Profile%20Tab/MyAccount.dart';
import 'package:e_commerce_ui_app/Profile%20Tab/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 200,
              width: MediaQuery.of(context).size.width,
              // color: Colors.greenAccent,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profileBg.jpg"),fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.indigo)),
                    child: Baseline(
                        baselineType: TextBaseline.alphabetic,
                        baseline: 110,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          radius: 55,
                          backgroundImage: AssetImage("assets/profielPic.png"),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Baseline(
                baseline: 5,
                baselineType: TextBaseline.alphabetic,
                child: Chip(
                    label: Text(
                  "Divyang",
                  style: GoogleFonts.cabin(fontSize: 30),
                ))),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyAccount())),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                tileColor: Colors.blueGrey,
                leading: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                  color: CupertinoColors.systemBackground,
                ),
                title: Text(
                  "My Account",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Settings())),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                tileColor: Colors.blueGrey,
                leading: Icon(
                  Icons.settings,
                  size: 30,
                  color: CupertinoColors.systemBackground,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => About())),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                tileColor: Colors.blueGrey,
                leading: Icon(
                  Icons.info_outline,
                  size: 30,
                  color: CupertinoColors.systemBackground,
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Help())),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                tileColor: Colors.blueGrey,
                leading: Icon(
                  Icons.help_outline,
                  size: 30,
                  color: CupertinoColors.systemBackground,
                ),
                title: Text(
                  "Help",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
