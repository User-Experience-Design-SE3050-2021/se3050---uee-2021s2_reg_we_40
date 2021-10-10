import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/history_page/dto/dto/historyDTO.dart';
import 'package:slt_broadband_application/pages/history_page/dto/dto/history_list_dto.dart';
import 'package:slt_broadband_application/pages/history_page/entity/history_list_entity.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/PromoDTO.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/dto.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_list_entity.dart';
import 'package:http/http.dart' as http;
import 'package:slt_broadband_application/utils/constants.dart';
import '../../../usecase.dart';

class GetPromotionDataList implements UseCase<PromoListEntity, Params>{
  final http.Client client;

  GetPromotionDataList({@required this.client});

  @override
  Future<PromoListEntity> call(Params params) async {

    var data = {
      'startDate':params.startDate,
      'endDate':params.endDate
    };
    // //make the api call
    // final response = await client.post(
    //   'some url',
    //   headers: {'Content-Type': 'application/json'},
    //   body: data
    // );

    var response = SAMPLE_PROMO;

    PromoListDTO promoListDTO = new PromoListDTO();

   //if call is success
    if (true) {

      //decode response body as json map
      var data = json.decode(response);

      //convert map into DTO
      final promoList = await promoListDTO.toPromoListDTO(data);

      //return an entity
      return await PromoListEntity.toPromoListEntity(promoList);
    }
  }

}

class Params extends Equatable {
  final String startDate;
  final String endDate;

  Params({@required this.startDate,@required this.endDate,}) : super([startDate,endDate]);
}