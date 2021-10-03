import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:slt_broadband_application/common%20widgets/charts/doughnut/doughnut_chart.dart';
import 'package:slt_broadband_application/utils/constants.dart';

class DetailedReportPage extends StatefulWidget {
  const DetailedReportPage({Key key}) : super(key: key);

  @override
  _DetailedReportPageState createState() => _DetailedReportPageState();
}

class _DetailedReportPageState extends State<DetailedReportPage> {
  List<charts.Series<Usage, String>> seriesPieData =
      List<charts.Series<Usage, String>>();
  var pieData = [
    new Usage('Youtube', 49.38, Colors.red),
    new Usage('Windows Update', 28.8, Colors.orange),
    new Usage('Google Play', 10.2, Colors.yellow),
    new Usage('games', 5, Colors.purple),
    new Usage('FaceBook', 2, Colors.blue),
    new Usage('RLP', 1, Colors.green),
    new Usage('Share Point', 0.5, Colors.pink),
    new Usage('Facebook video', 0.25, Colors.lightBlue),
    new Usage('WhatsApp', 2, Colors.blue[500]),
    new Usage('WhatsApp', 2, Colors.blue[500]),
    new Usage('Other', 2, Colors.grey[500]),

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
        ),
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            color: Color(0xff002B44),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    var data = Detailed_Report_data_list[index];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 8,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 15,
                                        color:
                                            Detailed_Report_color_list[index],
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        data['label'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Text(data['value'],
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
