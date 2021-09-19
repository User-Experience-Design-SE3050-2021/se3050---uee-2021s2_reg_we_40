import 'package:flutter/material.dart';

class SLTBNBItemModel {
  final String label;
  final IconData icon;
  final Function onPressed;

  const SLTBNBItemModel({this.icon, this.label, this.onPressed});

  String getLabel() {
    return this.label;
  }

  IconData getIcon() {
    return this.icon;
  }

  Function getFunction() {
    return this.onPressed;
  }
}
