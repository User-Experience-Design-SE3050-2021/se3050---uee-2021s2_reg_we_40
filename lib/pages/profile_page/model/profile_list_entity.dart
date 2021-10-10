import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/profile_page/dto/dto.dart';
import 'package:slt_broadband_application/pages/profile_page/model/profile_entity.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/dto.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';

class ProfileListEntity extends Equatable {
  final List<SLTProfileEntity> profileEntityList;

  ProfileListEntity({@required this.profileEntityList}) : super([profileEntityList]);

  static Future<ProfileListEntity> toProfileListEntity(
      ProfileListDTO profileListDTO) async {
    return await ProfileListEntity(profileEntityList: profileListDTO.profileList);
  }
}
