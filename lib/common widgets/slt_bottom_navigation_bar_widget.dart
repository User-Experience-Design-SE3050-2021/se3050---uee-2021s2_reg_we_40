import 'package:flutter/material.dart';
import 'package:slt_broadband_application/models/slt_bnb_item.model.dart';
import 'package:slt_broadband_application/pages/HomePage/widgets/slt_bnb_item.dart';
import 'package:slt_broadband_application/utils/constants.dart';

class SLTBNB extends StatefulWidget {
  final itemList;
  const SLTBNB({Key key, this.itemList}) : super(key: key);

  @override
  _SLTBNBState createState() => _SLTBNBState(itemList: this.itemList);
}

class _SLTBNBState extends State<SLTBNB> {
  var itemList;
  _SLTBNBState({this.itemList});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buildBNBItems(this.itemList),
        ),
      ),
    );
  }
}

List<Widget> buildBNBItems(List dataSet) {
  return dataSet
      .map((e) => SLTBNBItem(
            icon: e.getIcon(),
            label: e.getLabel(),
            onPress: e.getFunction(),
          ))
      .toList();
}
