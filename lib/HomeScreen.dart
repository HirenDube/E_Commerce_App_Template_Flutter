
import 'package:e_commerce_ui_app/3rd%20Grid/Iphone.dart';
import 'package:e_commerce_ui_app/3rd%20Grid/MacBook.dart';
import 'package:e_commerce_ui_app/3rd%20Grid/PS5.dart';
import 'package:e_commerce_ui_app/3rd%20Grid/S23.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '1st Grid/Cloathes.dart';
import '1st Grid/Electronics.dart';
import '1st Grid/HomeDecorItems.dart';
import '1st Grid/Shoes.dart';
import '1st Grid/SkinCareProducts.dart';
import '1st Grid/Toys.dart';
import '2nd Grid/Fashion.dart';
import '2nd Grid/SmartPhones.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({Key? key}) : super(key: key);
  double top = 10,left=10,right=10;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/bannerPng2.png",
                          fit: BoxFit.fill,
                          height: 120,
                          width: 350,
                        ),
                        Positioned(
                          top: 5,
                          left: 87,
                          child: Column(
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                "Summer Sales",
                                style: GoogleFonts.anton(
                                    fontSize: 30, color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "12nd to 17th May",
                                style: GoogleFonts.anton(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: SizedBox(
                  height: 150,
                  child: GridView.count(
                    crossAxisCount: 1,
                    childAspectRatio: 2 / 2,
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Cloathes())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueGrey),
                              width: 115,
                              height: 115,
                              child: Image.asset(
                                  "assets/productsPng/cloathes.png"),
                            ),
                            Text(
                              "Cloathes",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Electronics())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueGrey),
                              width: 115,
                              height: 115,
                              child: Image.asset(
                                  "assets/productsPng/Electronic.png"),
                            ),
                            Text(
                              "Electronics",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Toys())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueGrey),
                              width: 115,
                              height: 115,
                              child: Image.asset("assets/productsPng/toys.png"),
                            ),
                            Text(
                              "Toys",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SkinCareProducts())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueGrey),
                              width: 115,
                              height: 115,
                              child: Image.asset(
                                  "assets/productsPng/skinCare.png"),
                            ),
                            Text(
                              "Skin Care Products",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Shoes())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueGrey),
                              width: 115,
                              height: 115,
                              child:
                                  Image.asset("assets/productsPng/shoes.png"),
                            ),
                            Text(
                              "Shoes",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => HomeDecorItems())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueGrey),
                              width: 115,
                              height: 115,
                              child: Image.asset(
                                  "assets/productsPng/homeDecor.png"),
                            ),
                            Text(
                              "Home Decor Items",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Suggested For You\n",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 140,
                child: GridView.count(
                  childAspectRatio: 9 / 16,
                  crossAxisCount: 1,
                  // childAspectRatio: 2 / 2,
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SmartPhones())),
                      child: Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.6),
                                    BlendMode.dstATop),
                                image: AssetImage(
                                    "assets/images/smartphonesBG.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey),
                          width: 600,
                          height: 100,
                          child: Text.rich(
                            TextSpan(
                                text: "  Smart Phones\n",
                                children: [
                                  TextSpan(
                                      text: "   23 Brands",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))
                                ],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white)),
                          )),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Fashion())),
                      child: Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.6),
                                      BlendMode.dstATop),
                                  image:
                                      AssetImage("assets/images/fashionBG.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey),
                          width: 600,
                          height: 100,
                          child: Text.rich(
                            TextSpan(
                                text: "  Fashion\n",
                                children: [
                                  TextSpan(
                                      text: "  13 Brands",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))
                                ],
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          )),
                    ),
                  ],
                ),
              ),
              Text(
                "\nPopular Ones",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 290,
                child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: 4 / 4,
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => PS5())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            width: 270,
                            height: 200,
                            child: Image.asset(
                              "assets/images/ps5.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Play Station 5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text.rich(
                            TextSpan(
                                text: "Rs. 65,000",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                                children: [
                                  TextSpan(
                                    text: "  Rs. 50,000 only",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: CupertinoColors.systemGreen),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => S23())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            width: 270,
                            height: 200,
                            child: Image.asset("assets/images/s23ultra.png"),
                          ),
                          Text(
                            "Galaxy S23 Ultra",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                          Text.rich(
                            TextSpan(
                                text: "Rs. 1,34,000",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                                children: [
                                  TextSpan(
                                    text: "  Rs. 1,14,000 only",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: CupertinoColors.systemGreen),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MacBook())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            width: 270,
                            height: 200,
                            child: Image.asset("assets/images/macbookpro.png"),
                          ),
                          Text(
                            "MacBook Pro M2 (1 TB)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text.rich(
                            TextSpan(
                                text: "Rs. 2,49,900",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                                children: [
                                  TextSpan(
                                    text: "  Rs. 2,40,999 only",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: CupertinoColors.systemGreen),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Iphone())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            width: 270,
                            height: 200,
                            child: Image.asset("assets/images/iphone.png"),
                          ),
                          Text(
                            "Apple iPhone 14 Pro Max",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text.rich(
                            TextSpan(
                                text: "Rs. 1,49,990",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                                children: [
                                  TextSpan(
                                    text: "  Rs. 1,39,990 only",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: CupertinoColors.systemGreen),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],

          ),
        ),
        Positioned(
          top: top,
          left: left,
          right: right,
          child:
              GestureDetector(
              //   onPanUpdate: (data){
              //   setState(() {
              //     left = max(0, left+data.delta.dx);
              //     top = max(0, top+data.delta.dy);
              //   });
              // },
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                height: 50,
                // width: 280,
              width: MediaQuery.of(context).size.width - 100,
                child: TextField(
                  onTap: () =>
                      showSearch(context: context, delegate: SearchingDelegate()),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      labelText: "Search",
                      labelStyle: TextStyle(color: Colors.white)),
                ),
            ),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGreen,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(width: 1, color: Colors.black)),
                ),
                child: InkWell(
                    onTap: () {
                      Fluttertoast.showToast(msg: "Notification Button Pressed");
                    },
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )),
            )
          ]),
              ),
        )
      ],
    ));
  }
}

class SearchingDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return ListView(
      children: [
        ListTile(
          title:
              Text("Currently seaarching functionality isn't working well !!"),
        )
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext) {
    // TODO: implement buildSuggestions
    return ListView(
      children: [
        ListTile(
          title: Text("IPhone 14 pro max"),
        ),ListTile(
          title: Text("MacBook pro M2 (1 TB)"),
        ),ListTile(
          title: Text("Galaxy S23 Ultra"),
        ),ListTile(
          title: Text("Play Station 5"),
        ),
      ],
    );
  }
}
