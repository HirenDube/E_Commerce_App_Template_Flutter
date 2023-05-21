import 'package:e_commerce_ui_app/Cart.dart';
import 'package:e_commerce_ui_app/Favorites.dart';
import 'package:e_commerce_ui_app/Profile.dart';
import 'package:e_commerce_ui_app/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SScreen(),
    theme: ThemeData(
        primaryColor: CupertinoColors.systemGreen,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: CupertinoColors.systemGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
          fillColor: CupertinoColors.systemGreen,
          filled: true,
        ),
        appBarTheme: AppBarTheme(backgroundColor: CupertinoColors.systemGreen)),
  ));
}

class MagicCommerceApp extends StatefulWidget {
  const MagicCommerceApp({Key? key}) : super(key: key);

  @override
  State<MagicCommerceApp> createState() => _MagicCommerceAppState();
}

class _MagicCommerceAppState extends State<MagicCommerceApp> {
  int currentPage = 0;
  List tabs = [HomeScreen(), Favorites(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          tabs[currentPage],
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: GNav(
                  tabBorderRadius: 50,
                  textStyle: GoogleFonts.alice(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  color: Colors.white,
                  tabMargin: EdgeInsets.all(6),
                  backgroundColor: CupertinoColors.systemGreen,
                  activeColor: Colors.white,
                  onTabChange: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  curve: Curves.fastOutSlowIn,
                  padding: EdgeInsets.all(10),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: "Home",
                    ),
                    GButton(
                      icon: Icons.favorite_border,
                      text: "Favorites",
                    ),
                    GButton(
                      icon: Icons.shopping_cart,
                      text: "Cart",
                    ),
                    GButton(
                      icon: Icons.account_circle,
                      text: "Profile",
                    ),
                  ],
                  gap: 8,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
