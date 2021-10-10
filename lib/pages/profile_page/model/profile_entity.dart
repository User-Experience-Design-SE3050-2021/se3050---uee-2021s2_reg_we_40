import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/profile_page/dto/profileDTO.dart';

class SLTProfileEntity extends Equatable {
  final String id;
  final String userName;
  final String name;
  final String email;
  final String dataPackage;
  final String billingDate;

  SLTProfileEntity({
    @required this.id,
    @required this.userName,
    @required this.name,
    @required this.email,
    @required this.dataPackage,
    @required this.billingDate,
  }):super([id,userName,name,email,dataPackage,billingDate]);

  static Future<SLTProfileEntity> toProfileEntity(
      ProfileDTO profileDTO) async {
    return await SLTProfileEntity(id: profileDTO.id,name: profileDTO.name,userName: profileDTO.userName,email: profileDTO.email,billingDate: profileDTO.billingDate,dataPackage: profileDTO.dataPackage);
  }
}
