

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class HistoryEvent extends Equatable {
  HistoryEvent([List props = const <dynamic>[]]) : super(props);
}

class GetHistoryListEvent extends HistoryEvent {
  final startDate;
  final endDate;

  GetHistoryListEvent({@required this.startDate,@required this.endDate}) : super([startDate, endDate]);
}
