import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/PromoDTO.dart';

import 'historyDTO.dart';

class HistoryListDTO extends Equatable {
  final List<HistoryDTO> historyList;

  HistoryListDTO({@required this.historyList}) : super([historyList]);

  Future<HistoryListDTO> toHistoryListDTO(List<dynamic> historyDataList) async {
    List<HistoryDTO> historyList = new List<HistoryDTO>();

    for (var i in historyDataList) {
      await historyList.add(HistoryDTO(
        id: i['id'],
        date: i['date'],
        dataLimit: i['dataLimit'],
        packageName: i['packageName'],
        price: i['price'],
        time: i['time'],
      ));
    }

    return HistoryListDTO(historyList: historyList);
  }
}
