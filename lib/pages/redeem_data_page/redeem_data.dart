import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RedeemData extends StatefulWidget {
  @override
  _RedeemDataState createState() => _RedeemDataState();
}

class _RedeemDataState extends State<RedeemData> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 20,
          height: MediaQuery.of(context).size.height / 9,
          child: Card(
            color: Colors.lightBlue[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Enter the promo code on the voucher to avail yourself with the offer",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 60,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 20,
          height: MediaQuery.of(context).size.height / 3.4,
          child: Card(
            elevation: 15,
            color: Colors.lightBlue[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 30.0),
                  child: Text(
                    "Enter Your Voucher ID : ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'A12891',
                      hintStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 16,
                      child: RaisedButton(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Redeem'),
                            content: const Text('Successfully Redeemed !'),
                            actions: <Widget>[
                              Center(
                                child: TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        color: Colors.lightBlue[900],
                        child: Text(
                          "Redeem Data",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
