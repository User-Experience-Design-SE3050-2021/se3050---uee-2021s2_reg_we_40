import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_list_entity.dart';

abstract class PromoState extends Equatable {
  PromoState([List props = const <dynamic>[]])
      : super (props);
}

class PromoInitial extends PromoState {}

class PromotionEmpty extends PromoState {}

class PromotionLoading extends PromoState {}

class PromotionLoaded extends PromoState {
  final PromoListEntity entity;

  PromotionLoaded({@required this.entity}) : super([entity]);
}
