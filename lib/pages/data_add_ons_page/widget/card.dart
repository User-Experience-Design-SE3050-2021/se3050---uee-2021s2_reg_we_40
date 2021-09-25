import 'package:flutter/material.dart';

class SLTDataAddOnsCard extends StatelessWidget {
  final String tittle;
  final String subtittle;
  final String description;
  final String gbAmount;
  final String amount;
  final String route;

  const SLTDataAddOnsCard({
    Key key,
    this.tittle,
    this.subtittle,
    this.description,
    this.gbAmount,
    this.amount,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        child: Card(
          elevation: 10,
          color: Colors.lightBlue[700],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  right: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          this.tittle,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      this.subtittle,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      this.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          this.gbAmount,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          this.amount,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        RaisedButton(
                          onPressed: () => {},
                          color: Colors.lightBlue[900],
                          child: Text(
                            'Add Data',
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
