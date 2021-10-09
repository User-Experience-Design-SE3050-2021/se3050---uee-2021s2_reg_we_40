import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GiftData extends StatefulWidget {
  @override
  _GiftDataState createState() => _GiftDataState();
}

class _GiftDataState extends State<GiftData> {
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
                    "Enter UserName of the person to whom you need to gift data",
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
                    "Receiver's User Name : ",
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
                      hintText: 'CEN2112458796345',
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
                        onPressed: () {},
                        color: Colors.lightBlue[900],
                        child: Text(
                          "Gift Data",
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
