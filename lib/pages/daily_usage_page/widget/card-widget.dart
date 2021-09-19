import 'package:flutter/material.dart';
import 'package:slt_broadband_application/pages/daily_usage_page/widget/progress-indicator.dart';

class UsageCard extends StatelessWidget {
  const UsageCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        child: MaterialButton(
          color: Colors.blue[800],
          onPressed: () => {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      // borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(20),
                      //     bottomLeft: Radius.circular(20)),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          color: Colors.blue[300],
                          child: Text(
                            'AUG-01 | 1.5GB',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('Downloads:',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text('56Gb',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('Uploads:',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text('56Gb',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        Text('__________________',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('Total:',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text('115GB',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Text('Standard',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                              Text('13GB',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          SLTDataUsageIndicator(
                            color: Colors.purpleAccent[200],
                            value: 0.6,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text('Free (Night Data)',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                              Text('13GB',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          SLTDataUsageIndicator(
                            color: Colors.amber[300],
                            value: 0.4,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
