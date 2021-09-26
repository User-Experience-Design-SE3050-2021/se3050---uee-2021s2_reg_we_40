import 'package:flutter/material.dart';
import 'package:slt_broadband_application/models/slt-basic-card-item-model.dart';
import 'package:slt_broadband_application/pages/data_add_ons_page/data_add_ons_page.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_model.dart';

const ENTRIES = [
  SLTPromoModel(
      amount: '500',
      description: 'description',
      imageUrl:
          'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
      route: '/page',
      title: 'NetFlix'),
  SLTPromoModel(
      amount: '500',
      description: 'description',
      imageUrl:
          'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
      route: '/page',
      title: 'NetFlix'),
  SLTPromoModel(
      amount: '500',
      description: 'description',
      imageUrl:
          'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
      route: '/page',
      title: 'NetFlix'),
  SLTPromoModel(
      amount: '500',
      description: 'description',
      imageUrl:
          'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
      route: '/page',
      title: 'NetFlix')
];

var SLT_MANAGE_DATA_PAGE_CONTENT = [
  SLTBasicCardItem(
      icon: Icons.add_circle_outline,
      label: 'Add More Data',
      page: MaterialPage(child: DataAddOnsPage())),
  SLTBasicCardItem(
      icon: Icons.calculate,
      label: 'Data Add-ons',
      page: MaterialPage(child: DataAddOnsPage())),
  SLTBasicCardItem(
      icon: Icons.card_giftcard,
      label: 'GiftData',
      page: MaterialPage(child: DataAddOnsPage())),
  SLTBasicCardItem(
      icon: Icons.credit_card,
      label: 'Redeem Data',
      page: MaterialPage(child: DataAddOnsPage())),
  SLTBasicCardItem(
      icon: Icons.calendar_today,
      label: 'Happy Day',
      page: MaterialPage(child: DataAddOnsPage())),
  SLTBasicCardItem(
      icon: Icons.search,
      label: 'More',
      page: MaterialPage(child: DataAddOnsPage()))
];
