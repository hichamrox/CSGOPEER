import 'package:flutter/material.dart';

class SellCard extends StatelessWidget {
  final String picture;
  final String title;
  // final String description;
  const SellCard({this.picture, this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.45,
      child: Card(
        // color: Colors.black,
        child: Column(
          children: [
            Container(
              child: Image.asset(picture),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
              ),
              // style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: size.width * 0.2,
              height: size.height * 0.05,
              child: RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 16,
                          child: Container(
                            height: size.height * 0.4,
                            width: size.width * 0.7,
                            child: Column(
                              children: [
                                Image.asset(picture),
                                Text(
                                  title,
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                  // style: TextStyle(color: Colors.white),
                                ),
                                Container(height: size.height * 0.02),
                                TextField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Amount',
                                  ),
                                ),
                                Container(height: size.height * 0.02),
                                SizedBox(
                                  width: size.width * 0.4,
                                  height: size.height * 0.07,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            //  UserLogin ulogin = new UserLogin();
                                            // return SellPage();
                                          },
                                        ),
                                      );
                                    },
                                    padding:
                                        EdgeInsets.symmetric(vertical: 15.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    color: Colors.green,
                                    elevation: 5.0,
                                    child: Center(
                                      child: Text(
                                        "Conifrm",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.black,
                elevation: 5.0,
                child: Center(
                  child: Text(
                    "Sell",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
