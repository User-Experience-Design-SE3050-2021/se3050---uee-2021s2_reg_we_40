import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/profile_page/dto/profileDTO.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/PromoDTO.dart';

class ProfileListDTO extends Equatable {
  final profileList;

  ProfileListDTO({@required this.profileList}) : super([profileList]);

  Future<ProfileListDTO> toProfileListDTO(List<dynamic> profileDataList) async {
    List<ProfileDTO> profileDataSetList = new List<ProfileDTO>();

    for (var i in profileDataList) {
      await profileDataSetList.add(ProfileDTO(id: i['id'],name: i['name'],dataPackage: i['dataPackage'],billingDate: i['billingDate'],email: i['email'],userName: i['userName']));
    }

    return ProfileListDTO(profileList: profileDataSetList);
  }
}