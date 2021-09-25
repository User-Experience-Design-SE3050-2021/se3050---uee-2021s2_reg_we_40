import 'package:flutter/material.dart';
import 'package:slt_broadband_application/common%20widgets/slt_rounded_cardview.widget.dart';
import 'package:slt_broadband_application/pages/HomePage/home_page.dart';
import 'package:slt_broadband_application/pages/daily_usage_page/daily_usage_page.dart';
import 'package:slt_broadband_application/pages/data_add_ons_page/data_add_ons_page.dart';
import 'package:slt_broadband_application/pages/promo_page/promo_page.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({Key key}) : super(key: key);

  @override
  _ManagePageState createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      children: [
        RoundedCardView(
          icon: Icons.add_circle_rounded,
          label: 'Add More Data',
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage(DataAddOnsPage())),
          ),
        ),
        RoundedCardView(
          icon: Icons.calculate,
          label: 'Data Add-ons',
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage(DataAddOnsPage())),
          ),
        ),
        RoundedCardView(
          icon: Icons.wallet_giftcard,
          label: 'GiftData',
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage(DataAddOnsPage())),
          ),
        ),
        RoundedCardView(
          icon: Icons.credit_card,
          label: 'Redeem Data',
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage(DataAddOnsPage())),
          ),
        ),
        RoundedCardView(
          icon: Icons.calendar_today,
          label: 'Happy Day',
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage(DataAddOnsPage())),
          ),
        ),
        RoundedCardView(
          icon: Icons.search,
          label: 'More',
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage(PromoPage())),
          ),
        ),
      ],
    );
  }
}
