import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/history_page/dto/dto/history_list_dto.dart';
import 'package:slt_broadband_application/pages/history_page/entity/history_list_entity.dart';
import 'package:http/http.dart' as http;
import 'package:slt_broadband_application/utils/constants.dart';
import '../../../usecase.dart';

class GetHistoryDataList implements UseCase<HistoryListEntity, Params>{
  final http.Client client;

  GetHistoryDataList({@required this.client});

  @override
  Future<HistoryListEntity> call(Params params) async {

    //make the api call
    // final response = await client.get(
    //   GET_HISTORY_DATA_LIST_URL+'?startingDate=${params.startDate}&endingDate=${params.endDate}',
    //   headers: {'Content-Type': 'application/json'},
    // );

    var response = SAMPLE_HISTORY;

   HistoryListDTO historyListDTO = new HistoryListDTO();

   //if call is success
    if (true) {

      //decode response body as json map
      var data = json.decode(response);

      //convert map into DTO
      final historyList = await historyListDTO.toHistoryListDTO(data);


      //return an entity
      return await HistoryListEntity.toHistoryListEntity(historyList);

    }
  }

}

class Params extends Equatable {
  final String startDate;
  final String endDate;

  Params({@required this.startDate,@required this.endDate,}) : super([startDate,endDate]);
}