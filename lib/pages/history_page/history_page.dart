import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:slt_broadband_application/pages/history_page/widgets/slt-history-card.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_model.dart';
import 'package:slt_broadband_application/pages/promo_page/widget/card.dart';
import 'package:slt_broadband_application/utils/constants.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  DateTime startDate, endDate;
  @override
  void initState() {
    super.initState();
    DateTime now = new DateTime.now();
    startDate = new DateTime(now.year, now.month, now.day - 1);
    endDate = new DateTime(now.year, now.month, now.day);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Color(0xff2776B8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff005D92),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: FlatButton(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                          print('change ');
                        }, onConfirm: (date) {
                          print('confirm ');
                        }, currentTime: DateTime.now());
                      },
                      child: Text(
                        'From: ${startDate.year}-${startDate.month}-${startDate.day}',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff005D92),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: FlatButton(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                          print('change ');
                        }, onConfirm: (date) {
                          print('confirm ');
                        }, currentTime: DateTime.now());
                      },
                      child: Text(
                        'To: ${endDate.year}-${endDate.month}-${endDate.day}',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: ENTRIES.length,
            itemBuilder: (context, index) {
              SLTPromoModel object = ENTRIES[index];
              return SLTHistoryCard(
                date: '2021-9-25',
                packageAmount: '30GB',
                packageName: 'Meet Lite (Zoom + team,+)',
                price: 'LKR-495',
                time: '9.00am',
              );
            },
          ),
        )
      ],
    );
  }
}
