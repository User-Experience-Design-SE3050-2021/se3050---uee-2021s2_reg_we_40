import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:slt_broadband_application/common%20widgets/charts/doughnut/doughnut_chart.dart';



class BonusDataUsage extends StatefulWidget {
  const BonusDataUsage({Key key}) : super(key: key);

  @override
  _BonusDataUsageState createState() => _BonusDataUsageState();
  
}

class _BonusDataUsageState extends State<BonusDataUsage> {
  List<charts.Series<Usage, String>> seriesPieData =
      List<charts.Series<Usage, String>>();
  var pieData = [
    new Usage('Remains', 90, Color(0xff1D89CF)),
    new Usage('Used', 10, Color(0xff939393))
  ];

   @override
  void initState() {
    super.initState();
    seriesPieData.add(
      charts.Series(
        domainFn: (Usage usage, _) => usage.label,
        measureFn: (Usage usage, _) => usage.value,
        colorFn: (Usage task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Data Usage',
        data: pieData,
        labelAccessorFn: (Usage row, _) => '${row.value}',
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          width: 380,
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
           color: Colors.grey[600],
		       borderRadius: BorderRadius.all(Radius.circular(20.0))),
           child: Padding(
             padding: EdgeInsets.only(top: 5),
           child: Align(
             alignment:Alignment.topCenter,
              child:Text(
             "Remaining volume as of 25-Sep-2021 11.11 PM",
             style: TextStyle(
               fontSize: 15.5,
               color: Colors.white,
               fontWeight: FontWeight.bold),
           ),
            )) ,
        ),
        Padding(
                padding: const EdgeInsets.only(top:15,right: 8,left: 8,bottom: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    color: Color(0xff79ACCD),
                    child: Stack(children: [  
                      Container(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child:Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Loyalty",                            
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight:FontWeight.bold)),
                          )
                          
                        ),
                        
                      ),   
                               
                      Center(
                        child:Padding(
                          padding: EdgeInsets.only(top: 5),
                        child: Container(
                          // margin: EdgeInsets.all(100.0),
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                            ),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '0 GB',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Text('REMAINING',
                          style: TextStyle(
                                fontSize: 20,))
                        ],
                      )))),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10),
                      child:PieChart(
                        seriesPieData: seriesPieData,
                      ))
                      ,
                      Align(
                            alignment: Alignment.bottomCenter,
                            child:Padding(
                            padding: EdgeInsets.only(top: 5,bottom: 5 ),
                            child: Text(
                              "5.7 GB used of 5.7 GB",                            
                              style: TextStyle(
                                fontSize: 20,
                                )),
                          )
                      )
                          
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child:Text("Subscription - 5.7 GB",
                style: TextStyle(fontSize: 19),),
                 
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child:Text("Valid Till : 24-Oct",
                style: TextStyle(fontSize: 19),),
                 
              ),
              Padding(
                padding: EdgeInsets.only(top:20),
                child: Container(
                height: 50,
                width: 200,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                color: Colors.blue[400],
                gradient: LinearGradient(colors: [Colors.lightBlue[700],Colors.blue[300],Colors.lightBlue[700]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                
                child: Align(
                  alignment:Alignment.center,
                    child:Text(
                  "UPGRADE TO 6.7 GB",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                ),
                  )) ,
              ),
              
        

      ]
     
      
    );
  }
}
