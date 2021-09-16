import 'package:flutter/material.dart';
import 'package:csgopeer/components/buy_card.dart';

import 'package:flutter/material.dart';
import 'package:csgopeer/components/sell_card.dart';

class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Buy Page"),
        ),
        body: Container(
            color: Colors.grey[900],
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BuyCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                        price: "500",
                      ),
                      BuyCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                        price: "500",
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
