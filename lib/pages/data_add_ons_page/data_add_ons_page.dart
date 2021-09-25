import 'package:flutter/material.dart';
import 'package:slt_broadband_application/pages/data_add_ons_page/widget/card.dart';
import 'package:slt_broadband_application/utils/data_add_ons_constants.dart';

import 'model/data_add_ons_model.dart';

class DataAddOnsPage extends StatefulWidget {
  const DataAddOnsPage({Key key}) : super(key: key);

  @override
  _DataAddOnsPageState createState() => _DataAddOnsPageState();
}

class _DataAddOnsPageState extends State<DataAddOnsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ENTRIES.length,
      itemBuilder: (context, index) {
        SLTAddOnsModel object = ENTRIES[index];
        return SLTDataAddOnsCard(
          tittle: object.getTittle(),
          subtittle: object.getSubtittle(),
          description: object.getDescription(),
          gbAmount: object.getGbAmount(),
          amount: object.getAmount(),
          route: object.getRoute(),
        );
      },
    );
  }
}
