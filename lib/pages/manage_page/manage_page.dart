import 'package:flutter/material.dart';
import 'package:slt_broadband_application/common%20widgets/slt_rounded_cardview.widget.dart';
import 'package:slt_broadband_application/models/slt-basic-card-item-model.dart';
import 'package:slt_broadband_application/pages/HomePage/home_page.dart';
import 'package:slt_broadband_application/pages/data_add_ons_page/data_add_ons_page.dart';
import 'package:slt_broadband_application/utils/constants.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({Key key}) : super(key: key);

  @override
  _ManagePageState createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: generateCardData(SLT_MANAGE_DATA_PAGE_CONTENT, context));
  }

  generateCardData(List<SLTBasicCardItem> dataset, BuildContext context) {
    return dataset
        .map((e) => RoundedCardView(
              icon: e.icon,
              label: e.label,
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(e.page.child, e.label)),
              ),
            ))
        .toList();
  }
}
