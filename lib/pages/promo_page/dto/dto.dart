import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/PromoDTO.dart';

class PromoListDTO extends Equatable {
  final promoList;

  PromoListDTO({@required this.promoList}) : super([promoList]);

  Future<PromoListDTO> toPromoListDTO(List<dynamic> promoDataList) async {
    List<PromoDTO> promoList = new List<PromoDTO>();

    for (var i in promoDataList) {
      await promoList.add(PromoDTO(imageUrl: i['imageUrl'],description: i['description'],amount: i['price'],title: i['title'],id: i['id']));
    }

    return PromoListDTO(promoList: promoList);
  }
}