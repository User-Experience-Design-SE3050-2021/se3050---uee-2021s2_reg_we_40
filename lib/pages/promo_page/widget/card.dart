import 'package:flutter/material.dart';

class SLTPromoCard extends StatelessWidget {
  final String imageUrl;
  final String titleText;
  final String description;
  final String amount;
  final String route;

  const SLTPromoCard({
    Key key,
    this.imageUrl,
    this.titleText,
    this.description,
    this.amount, this.route,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'NetFlix',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 15),
                      child: Image.network(this.imageUrl),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    this.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Monthly Instalments:',
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        this.amount,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        onPressed: () => {},
                        color: Colors.lightBlue[900],
                        child: Text(
                          'Add Promotion',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ],
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
