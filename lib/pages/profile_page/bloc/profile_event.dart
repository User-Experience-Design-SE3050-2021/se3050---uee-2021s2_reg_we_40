

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class ProfileEvent extends Equatable {
  ProfileEvent([List props = const <dynamic>[]]) : super(props);
}

class GetProfileEvent extends ProfileEvent {
  final id;
  GetProfileEvent({@required this.id,}) : super([id]);
}
