import 'package:flutter/material.dart';
import 'package:csgopeer/pages/sell_page.dart';
import 'package:csgopeer/pages/buy_page.dart';

import 'balance_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: Text(
                    'hello pseudo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart, color: Colors.white),
                  title: Text(
                    'Offres',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message, color: Colors.white),
                  title: Text(
                    'Messages',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //  UserLogin ulogin = new UserLogin();
                          return BalancePage("", "Ivan", "400");
                        },
                      ),
                    );
                  },
                  leading: Icon(Icons.account_circle, color: Colors.white),
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "CsgoPeer",
            textAlign: TextAlign.left,
          ),
          // leading: Icon(Icons.menu),
          backgroundColor: Colors.black,
          // actions: <Widget>[
          //    IconButton(icon: Icon(Icons.menu), onPressed: () => {}),
          //    IconButton(icon: Icon(Icons.account_circle), onPressed: () => { })
          // ]
        ),
        body: Container(
          color: Colors.grey[900],
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "Welcome mate!",
                  style: TextStyle(color: Colors.orange, fontSize: 40),
                ),
                Text(
                  "Start trading skins with players now",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ImageIcon(AssetImage("assets/icons/balance.png"),
                    size: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.orange),
                Text(
                  "Scalable Fees from 4.5% to 1.5%",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "scaling détails",
                  style: TextStyle(color: Colors.orange),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ImageIcon(AssetImage("assets/icons/chat.png"),
                    size: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.orange),
                Text(
                  "Negotiate directly with users, Buyer and Sellers can discuss on our chat systém",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "chat rules",
                  style: TextStyle(color: Colors.orange),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ImageIcon(AssetImage("assets/icons/dollars.png"),
                    size: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.orange),
                Text(
                  "Secure payout with : skrill, paypal or crypto",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "payout détails",
                  style: TextStyle(color: Colors.orange),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "How it work",
                  style: TextStyle(color: Colors.orange, fontSize: 30),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Step1:",
                      style: TextStyle(color: Colors.orange, fontSize: 30),
                    ),
                    Text(
                      "Seller send offer to buyer on the website (not in steam), the offer includes the items and price defined by the Seller",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Step2:",
                      style: TextStyle(color: Colors.orange, fontSize: 30),
                    ),
                    Text(
                      "Buyer accept or decline offer.if the buyer accept the offer he need to payout ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Step3:",
                      style: TextStyle(color: Colors.orange, fontSize: 30),
                    ),
                    Text(
                      "Now Seller needs to send all items of the offer on steam with a trade offer to the Seller then Buyer click on done button on the offer.",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Step4:",
                      style: TextStyle(color: Colors.orange, fontSize: 30),
                    ),
                    Text(
                      "Step4:Nothing, we take care of checking if the items have been sent to the buyer.if that is the case well done Seller recieve his money and Buyer can enjoy his new items :)",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.3,
                      height: size.height * 0.07,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                //  UserLogin ulogin = new UserLogin();
                                return SellPage();
                              },
                            ),
                          );
                        },
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.orange,
                        elevation: 5.0,
                        child: Center(
                          child: Text(
                            "Sell",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                      height: size.height * 0.07,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                //  UserLogin ulogin = new UserLogin();
                                return BuyPage();
                              },
                            ),
                          );
                        },
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.orange,
                        elevation: 5.0,
                        child: Center(
                          child: Text(
                            "Buy",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // body: Container(
          //     color: Colors.grey[850],
          //     width: MediaQuery.of(context).size.width,
          //     child: Column(
          //       children:
          //     )),
        ));
  }
}
