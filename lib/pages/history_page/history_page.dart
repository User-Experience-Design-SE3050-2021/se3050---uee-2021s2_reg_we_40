import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:slt_broadband_application/pages/history_page/bloc/bloc.dart';
import 'package:slt_broadband_application/pages/history_page/widgets/slt-history-card.dart';
import 'package:slt_broadband_application/pages/promo_page/model/promo_entity.dart';
import 'package:slt_broadband_application/pages/promo_page/widget/card.dart';
import 'package:slt_broadband_application/utils/constants.dart';

import '../../injectionContainer.dart';

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
        ),buildBody(context),

      ],
    );
  }

  dispatchBlocCall({BuildContext context,startDate,endDate}){
    BlocProvider.of<HistoryBloc>(context).dispatch(GetHistoryListEvent(startDate: startDate, endDate: endDate));
  }

  List<String> getDate(){
    String startDate = '';
    if(DateTime.now().month - 1 > 0){
       startDate = DateTime.now().year.toString() +"-"+ (DateTime.now().month-1).toString()+"-"+ DateTime.now().day.toString();
    }else{
      startDate = DateTime.now().year.toString() +"-"+'12'+"-"+ DateTime.now().day.toString();
    }
    String endDate = DateTime.now().year.toString() +"-"+ DateTime.now().month.toString()+"-"+ DateTime.now().day.toString();

    print([startDate,endDate]);

    return [startDate,endDate];
  }

  BlocProvider<HistoryBloc> buildBody(BuildContext context){
    return BlocProvider(
        builder: (_) => sl<HistoryBloc>(),
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state){
            if(state is HistoryEmpty){
              List<String> dates = getDate();
              //do something to call when state is empty
              dispatchBlocCall(context: context,startDate: dates[0],endDate: dates[1]);
            }else if(state is HistoryLoading){
              return Text('Loading...');
            }else if(state is HistoryLoaded){
              return Expanded(
                child: ListView.builder(
                  itemCount: state.entity.historyEntityList.length,
                  itemBuilder: (context, index) {
                    var data = state.entity.historyEntityList[index];
                    return SLTHistoryCard(
                      date: data.date,
                      packageAmount: data.dataLimit,
                      packageName: data.packageName,
                      price: data.price,
                      time: data.time,
                    );
                  },
                ),
              );
            }
            return Container();
          },
        ),
    );

  }
}
