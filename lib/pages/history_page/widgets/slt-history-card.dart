import 'package:flutter/material.dart';

class SLTHistoryCard extends StatelessWidget {
  final date;
  final packageName;
  final time;
  final packageAmount;
  final price;
  const SLTHistoryCard({
    Key key,
    this.date,
    this.packageName,
    this.time,
    this.packageAmount,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        child: Card(
          elevation: 0,
          color: Colors.lightBlue[700],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        this.date,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(this.packageName,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.time,
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    this.packageAmount,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.price,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
