import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slt_broadband_application/pages/history_page/bloc/bloc.dart';
import 'package:slt_broadband_application/pages/history_page/usecase/get_history_data_usecase.dart';



class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  //usecase to be called
  final GetHistoryDataList getHistoryDataList;

  HistoryBloc({
    @required this.getHistoryDataList
  });

  @override
  HistoryState get initialState => HistoryEmpty();

  @override
  Stream<HistoryState> mapEventToState(
      HistoryEvent event,
      ) async* {
    if(event is GetHistoryListEvent) {

      yield HistoryLoading();

      try {
        //call the usecase to get data
        final _historyDataList = await getHistoryDataList(Params(startDate: event.startDate, endDate: event.endDate));

        //change the application state from loading to loaded
        yield HistoryLoaded(entity: _historyDataList);
      } on NoSuchMethodError {

      }
    }
  }
}

