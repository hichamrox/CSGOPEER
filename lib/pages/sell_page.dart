import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:csgopeer/components/sell_card.dart';

class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Sell Page"),
        ),
        body: Container(
            color: Colors.grey[900],
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SearchBar(onSearch: (j) {}, onItemFound: (h, k) {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                      SellCard(
                        picture: "assets/skin/csgoskin.png",
                        title: "gun",
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
