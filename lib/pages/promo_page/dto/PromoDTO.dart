import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';

class PromoDTO  extends SLTPromoEntity{

  PromoDTO(
      { @required String id,
        @required String title,
        @required String amount,
        @required String description,
        @required String imageUrl,
      })
      : super(id: id,title: title,amount: amount,description: description,imageUrl: imageUrl,);


  factory PromoDTO.fromJson(Map<String, dynamic> json) {
    return PromoDTO(
      id : json['id'],
      title : json['title'],
      amount : json['amount'],
      description : json['description'],
      imageUrl : json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'amount':amount,
      'description':description,
      'imageUrl':imageUrl,
    };
  }


}