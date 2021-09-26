import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:slt_broadband_application/common%20widgets/charts/doughnut/doughnut_chart.dart';

class DetailedReportPage extends StatefulWidget {
  const DetailedReportPage({Key key}) : super(key: key);

  @override
  _DetailedReportPageState createState() => _DetailedReportPageState();
}

class _DetailedReportPageState extends State<DetailedReportPage> {
  List<charts.Series<Usage, String>> seriesPieData =
      List<charts.Series<Usage, String>>();
  var pieData = [
    new Usage('Youtube', 70, Colors.red),
    new Usage('League of legends', 10, Colors.orange),
    new Usage('Twitch', 10, Colors.purple),
    new Usage('Whats App', 8, Colors.green),
    new Usage('Google Play', 2, Colors.grey),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width - 20,
            height: MediaQuery.of(context).size.height / 2.4,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              color: Color(0xff118DD2),
              child: Stack(children: [
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Standard',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Tap here to view base on quota ',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                )),
                PieChart(
                  seriesPieData: seriesPieData,
                ),
              ]),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Toggal switch to view percentages or values'),
            Switch(
              value: true,
              onChanged: (value) => {},
              activeColor: Colors.blue,
            )
          ],
        )
      ],
    );
  }
}