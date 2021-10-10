import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:slt_broadband_application/common%20widgets/charts/doughnut/doughnut_chart.dart';
import 'package:slt_broadband_application/pages/Extra%20GB%20Usage/extra_gb_usage.dart';
import 'package:slt_broadband_application/pages/HomePage/home_page.dart';
import 'package:slt_broadband_application/pages/add_ons_usage/add_ons_usage.dart';
import 'package:slt_broadband_application/pages/bonus_data_usage/bonus_data_uage.dart';
import 'package:slt_broadband_application/pages/daily_usage_page/daily_usage_page.dart';
import 'package:slt_broadband_application/pages/detailed_report_page/detailed-report-page.dart';
import 'package:slt_broadband_application/pages/free_data/free_data.dart';

class UsagePage extends StatefulWidget {
  const UsagePage({Key key}) : super(key: key);

  @override
  _UsagePageState createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  List<charts.Series<Usage, String>> seriesPieData =
      List<charts.Series<Usage, String>>();
  var pieData = [
    new Usage('Remains', 57, Color(0xff1D89CF)),
    new Usage('Used', 43, Color(0xff939393))
  ];

  List<charts.Series<Usage, String>> seriesPieDataFree =
      List<charts.Series<Usage, String>>();
  var pieDataFree = [
    new Usage('Remains', 89, Color(0xff1D89CF)),
    new Usage('Used', 11, Color(0xff939393))
  ];

   List<charts.Series<Usage, String>> seriesPieDataTotal =
      List<charts.Series<Usage, String>>();
  var pieDataTotal = [
    new Usage('Remains', 76, Color(0xff1D89CF)),
    new Usage('Used', 24, Color(0xff939393))
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
    seriesPieDataFree.add(
      charts.Series(
        domainFn: (Usage usage, _) => usage.label,
        measureFn: (Usage usage, _) => usage.value,
        colorFn: (Usage task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Data Usage',
        data: pieDataFree,
        labelAccessorFn: (Usage row, _) => '${row.value}',
      ),
    );
    seriesPieDataTotal.add(
      charts.Series(
        domainFn: (Usage usage, _) => usage.label,
        measureFn: (Usage usage, _) => usage.value,
        colorFn: (Usage task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Data Usage',
        data: pieDataTotal,
        labelAccessorFn: (Usage row, _) => '${row.value}',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text('Your Speed Is Normal Right Now', style: TextStyle(fontSize: 20)),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                              "Standard",                            
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight:FontWeight.bold),),
                          )
                        ),
                      ), 
                      Padding(
                        padding: EdgeInsets.only(top: 150, left: 380),
                         child :Icon(Icons.arrow_forward_ios_rounded)),
                               
                       Center(
                        child:Padding(
                          padding: EdgeInsets.only(top: 5),
                        child: Container(
                          // margin: EdgeInsets.all(100.0),
                          height: 170,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                            ),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '37 GB',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Text('REMAINING',
                          style: TextStyle(
                                fontSize: 20,))
                        ],
                      ))
                      )),
                       Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10),
                      child:PieChart(
                        seriesPieData: seriesPieData,
                      )
                       ),
                        Container(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child:Padding(
                            padding: EdgeInsets.only(top: 2, bottom: 5),
                            child: Text(
                              "28 GB used of 65 GB (Valid till : 30-Oct)",                            
                              style: TextStyle(
                                fontSize: 16,
                               ),),
                          )
                          
                        ),
                      ) 
                    ]),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 2.5,
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
                              "Free",                            
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight:FontWeight.bold),),
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 150, left: 380),
                         child :Icon(Icons.arrow_forward_ios_rounded)),
                      Center(
                        child:Padding(
                          padding: EdgeInsets.only(top: 5),
                        child: Container(
                          // margin: EdgeInsets.all(100.0),
                          height: 157,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                            ),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '89 GB',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Text('REMAINING',
                          style: TextStyle(
                                fontSize: 20,))
                        ],
                      ))
                      )),
                     Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10),
                      child:PieChart(
                        seriesPieData: seriesPieDataFree,
                      )),
                       Container(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child:Padding(
                            padding: EdgeInsets.only(top: 2, bottom: 5),
                            child: Text(
                              "11 GB used of 100 GB (Valid till : 30-Oct)",                            
                              style: TextStyle(
                                fontSize: 16,
                               ),),
                          )
                          
                        ),
                      ) 
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 2.5,
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
                              "Standard + Free",                            
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight:FontWeight.bold),),
                          )
                        ),
                      ),
                      Center(
                        child:Padding(
                          padding: EdgeInsets.only(top: 5),
                        child: Container(
                          // margin: EdgeInsets.all(100.0),
                          height: 168,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                            ),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '125 GB',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Text('REMAINING',
                          style: TextStyle(
                                fontSize: 20,))
                        ],
                      ))
                      )),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10),
                      child:PieChart(
                        seriesPieData: seriesPieDataTotal,
                      )),
                      Container(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child:Padding(
                            padding: EdgeInsets.only(top: 2, bottom: 5),
                            child: Text(
                              "40 GB used of 160 GB (Valid till : 30-Oct)",                            
                              style: TextStyle(
                                fontSize: 16,
                               ),),
                          )
                          
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SLTRoundedButton(
              label: 'Extra GB',
    onPressed: () => Navigator.pushReplacement(
    context,
    MaterialPageRoute(
    builder: (context) => HomePage(ExtraGBUsage(),'Extra GB')),
    ),
    ),

            SLTRoundedButton(
              label: 'Add-Ons',
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(AddOnsUsage(),'Add-Ons')),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SLTRoundedButton(
              label: 'Bonus Data',
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(BonusDataUsage(),'Bonus Data')),
              ),
            ),
            SLTRoundedButton(
              label: 'Free Data',
               onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(FreeData(),'Bonus Data')),
              ),
              
            ),
          ],
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            height: MediaQuery.of(context).size.height / 10,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HomePage(DailyUsagePage(), 'Daily Usage')),
              ),
              color: Colors.blue,
              child: Text(
                'DAILY USAGE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )),
      ],
    );
  }
}

class SLTRoundedButton extends StatelessWidget {
  final label;
  final onPressed;
  const SLTRoundedButton({
    Key key,
    this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onPressed: this.onPressed,
          color: Colors.blue,
          child: Text(
            this.label,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
