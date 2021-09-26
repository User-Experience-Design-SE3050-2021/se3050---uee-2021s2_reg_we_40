import 'package:flutter/material.dart';
import 'package:slt_broadband_application/pages/HomePage/home_page.dart';
import 'package:slt_broadband_application/pages/daily_usage_page/widget/card-widget.dart';
import 'package:slt_broadband_application/pages/detailed_report_page/detailed-report-page.dart';

class DailyUsagePage extends StatefulWidget {
  const DailyUsagePage({Key key}) : super(key: key);

  @override
  _DailyUsagePageState createState() => _DailyUsagePageState();
}

class _DailyUsagePageState extends State<DailyUsagePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return UsageCard(onPressed: () =>Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage(DetailedReportPage(), 'Detailed Report')),
        ),);
      },
    );
  }
}
