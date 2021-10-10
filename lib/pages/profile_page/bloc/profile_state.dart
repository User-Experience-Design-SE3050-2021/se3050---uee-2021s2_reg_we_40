import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/profile_page/model/profile_entity.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_list_entity.dart';

abstract class ProfileState extends Equatable {
  ProfileState([List props = const <dynamic>[]])
      : super (props);
}

class ProfileInitial extends ProfileState {}

class ProfileEmpty extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final SLTProfileEntity entity;

  ProfileLoaded({@required this.entity}) : super([entity]);
}
