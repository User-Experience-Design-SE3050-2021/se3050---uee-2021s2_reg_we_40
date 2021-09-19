import 'package:flutter/material.dart';

class SLTBNBItem extends StatelessWidget {
  final Function onPress;
  final String label;
  final IconData icon;
  SLTBNBItem(
      {Key key,
      @required this.onPress,
      @required this.label,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: this.onPress,
      minWidth: 40,
      child: Column(
        children: <Widget>[
          Icon(
            this.icon,
            color: Colors.blue,
          ),
          Text(
            this.label,
            style: TextStyle(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
