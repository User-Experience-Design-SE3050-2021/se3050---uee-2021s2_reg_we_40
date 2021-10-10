import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class SLTHistoryEntity extends Equatable {
  final String id;
  final String packageName;
  final String dataLimit;
  final String date;
  final String time;
  final String price;

  SLTHistoryEntity({
    @required this.id,
    @required this.packageName,
    @required this.dataLimit,
    @required this.date,
    @required this.time,
    @required this.price,
  }):super([id,packageName,date,dataLimit,time,price]);
}
