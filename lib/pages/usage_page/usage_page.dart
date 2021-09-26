import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:slt_broadband_application/common%20widgets/charts/doughnut/doughnut_chart.dart';
import 'package:slt_broadband_application/pages/HomePage/home_page.dart';
import 'package:slt_broadband_application/pages/daily_usage_page/daily_usage_page.dart';
import 'package:slt_broadband_application/pages/detailed_report_page/detailed-report-page.dart';

class UsagePage extends StatefulWidget {
  const UsagePage({Key key}) : super(key: key);

  @override
  _UsagePageState createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  List<charts.Series<Usage, String>> seriesPieData =
      List<charts.Series<Usage, String>>();
  var pieData = [
    new Usage('Used', 40, Color(0xff1D89CF)),
    new Usage('Remains', 60, Color(0xff939393))
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
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '39 GB',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text('REMAINING')
                        ],
                      )),
                      PieChart(
                        seriesPieData: seriesPieData,
                      ),
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
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '39 GB',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text('REMAINING')
                        ],
                      )),
                      PieChart(
                        seriesPieData: seriesPieData,
                      ),
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
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '39 GB',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text('REMAINING')
                        ],
                      )),
                      PieChart(
                        seriesPieData: seriesPieData,
                      ),
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
            ),
            SLTRoundedButton(
              label: 'Add-Ons',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SLTRoundedButton(
              label: 'Bouns Data',
            ),
            SLTRoundedButton(
              label: 'Free Data',
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
