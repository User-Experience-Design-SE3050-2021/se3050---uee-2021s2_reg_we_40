import 'package:flutter/material.dart';
import 'package:slt_broadband_application/common%20widgets/slt_rounded_cardview.widget.dart';

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
        ),
        RoundedCardView(
          icon: Icons.calculate,
          label: 'Data Add-ons',
        ),
        RoundedCardView(
          icon: Icons.wallet_giftcard,
          label: 'GiftData',
        ),
        RoundedCardView(
          icon: Icons.credit_card,
          label: 'Redeem Data',
        ),
        RoundedCardView(
          icon: Icons.calendar_today,
          label: 'Happy Day',
        ),
        RoundedCardView(
          icon: Icons.search,
          label: 'More',
        ),
      ],
    );
  }
}
