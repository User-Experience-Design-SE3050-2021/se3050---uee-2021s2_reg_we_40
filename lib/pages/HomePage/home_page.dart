import 'package:flutter/material.dart';
import 'package:slt_broadband_application/common%20widgets/slt_bottom_navigation_bar_widget.dart';
import 'package:slt_broadband_application/models/slt_bnb_item.model.dart';
import 'package:slt_broadband_application/pages/daily_usage_page/daily_usage_page.dart';
import 'package:slt_broadband_application/pages/history_page/history_page.dart';
import 'package:slt_broadband_application/pages/manage_page/manage_page.dart';
import 'package:slt_broadband_application/pages/profile_page/profile_page.dart';
import 'package:slt_broadband_application/pages/promo_page/promo_page.dart';
import 'package:slt_broadband_application/pages/usage_page/usage_page.dart';

class HomePage extends StatefulWidget {
  final initialPage;
  HomePage(this.initialPage) : super();
  @override
  _HomePageState createState() => _HomePageState(this.initialPage);
}

class _HomePageState extends State<HomePage> {
  var title;
  final initialPage;
  Widget bodyContent;

  _HomePageState(this.initialPage);
  @override
  void initState() {
    super.initState();
    this.title = 'Usage';
    // this.bodyContent = UsagePage();
    this.bodyContent = this.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    var BNBItemList = [
      SLTBNBItemModel(
          icon: Icons.pie_chart,
          label: 'Usage',
          onPressed: () => setState(() {
                this.title = 'Usage';
                this.bodyContent = UsagePage();
              })),
      SLTBNBItemModel(
          icon: Icons.list,
          label: 'Manage',
          onPressed: () => setState(() {
                this.title = 'Manage';
                this.bodyContent = ManagePage();
              })),
      SLTBNBItemModel(
          icon: Icons.history,
          label: 'History',
          onPressed: () => setState(() {
                this.title = 'History';
                this.bodyContent = HistoryPage();
              })),
      SLTBNBItemModel(
          icon: Icons.notifications,
          label: 'Promo',
          onPressed: () => setState(() {
                this.title = 'Promotion';
                this.bodyContent = PromoPage();
              })),
      SLTBNBItemModel(
          icon: Icons.account_circle_rounded,
          label: 'Profile',
          onPressed: () => setState(() {
                this.title = 'Profile';
                this.bodyContent = ProfilePage();
              })),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xff2776B8),
      ),
      bottomNavigationBar: SLTBNB(
        itemList: BNBItemList,
      ),
      body: SafeArea(
        child: Center(
          child: this.bodyContent,
        ),
      ),
    );
  }
}
