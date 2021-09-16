import 'package:flutter/material.dart';

class BalancePage extends StatelessWidget {
  final String picture;
  final String title;
  final String balance;
  const BalancePage(this.picture, this.title, this.balance);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
            ),
            Text(
              "Hello " + title,
              style: TextStyle(color: Colors.orange, fontSize: 60),
            ),
            Container(
              height: size.height * 0.1,
            ),
            Text(
              "Your current balance is : " + balance + "€",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Container(
              height: size.height * 0.05,
            ),
            SizedBox(
              width: size.width * 0.3,
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
                            height: size.height * 0.3,
                            width: size.width * 0.7,
                            child: Column(
                              children: [
                                Container(height: size.height * 0.02),
                                Text(
                                  "How much you want to add ?",
                                  style: TextStyle(
                                    fontSize: 20,
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
                color: Colors.green,
                elevation: 5.0,
                child: Center(
                  child: Text(
                    "Add money",
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
