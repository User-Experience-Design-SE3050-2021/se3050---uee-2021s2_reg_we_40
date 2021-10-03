import 'package:flutter/material.dart';
import 'package:slt_broadband_application/models/slt-basic-card-item-model.dart';
import 'package:slt_broadband_application/pages/add_more_data_page/add_more_data.dart';
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
      page: MaterialPage(child: AddMoreData())),
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

const Detailed_Report_color_list = <MaterialColor>[
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.purple,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.lightBlue,
  Colors.lightBlue,
  Colors.grey
];

const Detailed_Report_data_list = [
  {'label': 'Youtube', 'value': '2400MB'},
  {'label': 'Windows Update', 'value': '1400MB'},
  {'label': 'Google Play', 'value': '500MB'},
  {'label': 'Games', 'value': '250MB'},
  {'label': 'Facebook', 'value': '100MB'},
  {'label': 'RLP', 'value': '50MB'},
  {'label': 'SharePoint', 'value': '25MB'},
  {'label': 'Facebook Video', 'value': '20MB'},
  {'label': 'WhatsApp', 'value': '15MB'},
  {'label': 'Others', 'value': '100MB'},
];


const ADD_MORE_DATA_CARDS = [
  {'value':'4GB','amount':'Rs. 425'},
  {'value':'5GB','amount':'Rs. 425'},
  {'value':'6GB','amount':'Rs. 425'},
  {'value':'7GB','amount':'Rs. 425'},
  {'value':'8GB','amount':'Rs. 425'},
  {'value':'9GB','amount':'Rs. 425'},
  {'value':'10GB','amount':'Rs. 425'},
  {'value':'4GB','amount':'Rs. 425'},
  {'value':'5GB','amount':'Rs. 425'},
  {'value':'6GB','amount':'Rs. 425'},
  {'value':'7GB','amount':'Rs. 425'},
  {'value':'8GB','amount':'Rs. 425'},
  {'value':'9GB','amount':'Rs. 425'},
  {'value':'10GB','amount':'Rs. 425'},


];
