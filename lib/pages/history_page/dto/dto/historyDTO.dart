import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/history_page/entity/history_entity.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';

class HistoryDTO extends SLTHistoryEntity{

  HistoryDTO(
      {  @required String id,
        @required String packageName,
        @required String dataLimit,
        @required String date,
        @required String time,
        @required String price,
      }):super(id:id,packageName:packageName,date:date,dataLimit:dataLimit,time:time,price:price);


}