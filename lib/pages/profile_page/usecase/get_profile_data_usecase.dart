import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/profile_page/dto/dto.dart';
import 'package:slt_broadband_application/pages/profile_page/dto/profileDTO.dart';
import 'package:slt_broadband_application/pages/profile_page/model/profile_entity.dart';
import 'package:slt_broadband_application/pages/profile_page/model/profile_list_entity.dart';
import 'package:http/http.dart' as http;
import 'package:slt_broadband_application/utils/constants.dart';
import '../../../usecase.dart';

class GetProfileData implements UseCase<SLTProfileEntity, Params>{
  final http.Client client;

  GetProfileData({@required this.client});

  @override
  Future<SLTProfileEntity> call(Params params) async {

    // //make the api call
    // final response = await client.post(
    //   'some url',
    //   headers: {'Content-Type': 'application/json'},
    //   body: data
    // );

    var response = SAMPLE_PROMO;

    ProfileDTO profileDTO = new ProfileDTO();

   //if call is success
    if (true) {

      //decode response body as json map
      var data = json.decode(response);

      //convert map into DTO
      final profile = await profileDTO.toProfileDTO(data);

      //return an entity
      return await SLTProfileEntity.toProfileEntity(profile);
    }
  }

}

class Params extends Equatable {
  final String id;

  Params({@required this.id}) : super([id]);
}