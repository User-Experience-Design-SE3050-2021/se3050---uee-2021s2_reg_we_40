

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class PromoEvent extends Equatable {
  PromoEvent([List props = const <dynamic>[]]) : super(props);
}

class GetPromotionListEvent extends PromoEvent {
  final startDate;
  final endDate;

  GetPromotionListEvent({@required this.startDate,@required this.endDate}) : super([startDate, endDate]);
}
