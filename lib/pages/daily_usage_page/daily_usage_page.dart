import 'package:flutter/material.dart';
import 'package:slt_broadband_application/pages/daily_usage_page/widget/card-widget.dart';

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
        return UsageCard();
      },
    );
  }
}
