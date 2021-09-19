import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PieChart extends StatefulWidget {
  final List<charts.Series<Usage, String>> seriesPieData;

  const PieChart({Key key, this.seriesPieData}) : super(key: key);

  @override
  _PieChartState createState() =>
      _PieChartState(seriesPieData: this.seriesPieData);
}

class _PieChartState extends State<PieChart> {
  final List<charts.Series<Usage, String>> seriesPieData;

  _PieChartState({this.seriesPieData});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: charts.PieChart(seriesPieData,
          animate: true,
          animationDuration: Duration(seconds: 1),
          defaultRenderer: new charts.ArcRendererConfig(
              arcWidth: 50, arcRendererDecorators: [])),
    );
  }
}

class Usage {
  String label;
  double value;
  Color colorval;

  Usage(this.label, this.value, this.colorval);
}
