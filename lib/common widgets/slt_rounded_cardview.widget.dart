import 'package:flutter/material.dart';

class RoundedCardView extends StatelessWidget {
  final String label;
  final IconData icon;
  const RoundedCardView({Key key, this.icon, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: MaterialButton(
          elevation: 15,
          color: Colors.lightBlue[700],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onPressed: () => print('pressed '),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                this.icon,
                size: 50,
                color: Colors.white,
              ),
              Text(
                this.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ));
  }
}
