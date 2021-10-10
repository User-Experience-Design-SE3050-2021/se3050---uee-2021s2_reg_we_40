import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/history_page/dto/dto/history_list_dto.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/dto.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';

import 'history_entity.dart';

class HistoryListEntity extends Equatable {
  final List<SLTHistoryEntity> historyEntityList;

  HistoryListEntity({@required this.historyEntityList}) : super([historyEntityList]);

  static Future<HistoryListEntity> toHistoryListEntity(
      HistoryListDTO historyListDTO) async {
    return await HistoryListEntity(historyEntityList: historyListDTO.historyList);
  }
}
