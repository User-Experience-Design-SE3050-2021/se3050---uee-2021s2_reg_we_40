import 'package:flutter/material.dart';
import 'package:slt_broadband_application/pages/promo_page/widget/card.dart';
import 'package:slt_broadband_application/utils/constants.dart';

import 'model/promo_model.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key key}) : super(key: key);

  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ENTRIES.length,
      itemBuilder: (context, index) {
        SLTPromoModel object = ENTRIES[index];
        return SLTPromoCard(
          imageUrl: object.getImageUrl(),
          amount: object.getAmount(),
          description: object.getDescription(),
          route: object.getRoute(),
          titleText: object.getTitle(),
        );
      },
    );
  }
}
