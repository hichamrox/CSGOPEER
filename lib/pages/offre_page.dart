import 'package:csgopeer/components/item_card.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemCard(
                    picture: "assets/skin/csgoskin.png",
                    title: "gun",
                    price: "40",
                  ),
                  ItemCard(
                    picture: "assets/skin/csgoskin.png",
                    title: "gun",
                    price: "40",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
