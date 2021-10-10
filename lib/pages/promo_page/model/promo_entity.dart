import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class SLTPromoEntity extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String amount;

  SLTPromoEntity({
    @required this.id,
    @required this.amount,
    @required this.description,
    @required this.imageUrl,
    @required this.title,
  }):super([id,title,amount,description,imageUrl,title]);
}
