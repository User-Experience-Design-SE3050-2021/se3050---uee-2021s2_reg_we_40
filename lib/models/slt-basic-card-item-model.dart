import 'package:flutter/material.dart';

class SLTBasicCardItem {
  String label;
  IconData icon;
  MaterialPage page;

  SLTBasicCardItem({this.label, this.icon, this.page});

  String getLabel() {
    return this.label;
  }

  IconData getIcon() {
    return this.icon;
  }

  MaterialPage getPage() {
    return this.page;
  }
}
