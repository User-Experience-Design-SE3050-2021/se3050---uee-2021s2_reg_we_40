import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/promo_page/dto/dto.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';

class PromoListEntity extends Equatable {
  final List<SLTPromoEntity> promoEntityList;

  PromoListEntity({@required this.promoEntityList}) : super([promoEntityList]);

  static Future<PromoListEntity> toPromoListEntity(
      PromoListDTO promoListDTO) async {
    return await PromoListEntity(promoEntityList: promoListDTO.promoList);
  }
}
