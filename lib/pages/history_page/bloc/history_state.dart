import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/history_page/entity/history_list_entity.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_list_entity.dart';

abstract class HistoryState extends Equatable {
  HistoryState([List props = const <dynamic>[]])
      : super (props);
}

class HistoryInitial extends HistoryState {}

class HistoryEmpty extends HistoryState {}

class HistoryLoading extends HistoryState {}

class HistoryLoaded extends HistoryState {
  final HistoryListEntity entity;

  HistoryLoaded({@required this.entity}) : super([entity]);
}
