import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/profile_page/model/profile_entity.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';

class ProfileDTO  extends SLTProfileEntity{

  ProfileDTO(
      { @required String id,
        @required String userName,
        @required String name,
        @required String email,
        @required String dataPackage,
        @required String billingDate,
      })
      : super(id: id,email: email,billingDate: billingDate,dataPackage: dataPackage,name: name,userName: userName,);

  Future<ProfileDTO> toProfileDTO( profileData) async {

    return ProfileDTO(id: profileData['id'],name: profileData['name'],dataPackage: profileData['dataPackage'],billingDate: profileData['billingDate'],email: profileData['email'],userName: profileData['userName']);

  }
}