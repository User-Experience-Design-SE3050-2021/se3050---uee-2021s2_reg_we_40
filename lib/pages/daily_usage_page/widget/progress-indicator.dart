import 'package:flutter/material.dart';

class SLTDataUsageIndicator extends StatelessWidget {
  final Color color;
  final double value;
  const SLTDataUsageIndicator({Key key, this.color, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 300,
      height: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: LinearProgressIndicator(
          value: this.value,
          valueColor: AlwaysStoppedAnimation<Color>(this.color),
          backgroundColor: Color(0xffD6D6D6),
        ),
      ),
    );
  }
}
