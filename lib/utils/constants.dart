import 'package:flutter/material.dart';
import 'package:slt_broadband_application/models/slt-basic-card-item-model.dart';
import 'package:slt_broadband_application/pages/add_more_data_page/add_more_data.dart';
import 'package:slt_broadband_application/pages/data_add_ons_page/data_add_ons_page.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';

// const ENTRIES = [
//   SLTPromoModel(
//       amount: '500',
//       description: 'description',
//       imageUrl:
//           'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
//       route: '/page',
//       title: 'NetFlix'),
//   SLTPromoModel(
//       amount: '500',
//       description: 'description',
//       imageUrl:
//           'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
//       route: '/page',
//       title: 'NetFlix'),
//   SLTPromoModel(
//       amount: '500',
//       description: 'description',
//       imageUrl:
//           'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
//       route: '/page',
//       title: 'NetFlix'),
//   SLTPromoModel(
//       amount: '500',
//       description: 'description',
//       imageUrl:
//           'https://www.indiewire.com/wp-content/uploads/2020/08/netflix.jpg',
//       route: '/page',
//       title: 'NetFlix')
// ];

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

const GET_HISTORY_DATA_LIST_URL = 'dflpiksj';

var SAMPLE_PROMO = '[{"id":"6161b16e1a8fd3410697d89d","title":"netflix","imageUrl":"https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bmV0ZmxpeHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80","description":"nn","price":"600"},{"id":"6161b17c1a8fd3410697d89e","title":"Work and learn","imageUrl":"https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bmV0ZmxpeHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80","description":"nn","price":"600"}]';

var SAMPLE_HISTORY = '[{"id":"61626d0321d16a231df17a8f","packageName":"Work and learn","dataLimit":"30GB","date":"2021-09-02T00:00:00.000+00:00","time":"4:00","price":"500"}]';