import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slt_broadband_application/pages/promo_page/bloc/bloc.dart';
import 'package:slt_broadband_application/pages/promo_page/usecase/get_promo_data_usecase.dart';




class PromoBloc extends Bloc<PromoEvent, PromoState> {
  //usecase to be called
  final GetPromotionDataList getPromotionDataList;

  PromoBloc({
    @required this.getPromotionDataList
  });

  @override
  PromoState get initialState => PromotionEmpty();

  @override
  Stream<PromoState> mapEventToState(
      PromoEvent event,
      ) async* {
    if(event is GetPromotionListEvent) {

      yield PromotionLoading();

      try {
        //call the usecase to get data
        final _promotionDataList = await getPromotionDataList(Params(startDate: event.startDate, endDate: event.endDate));

        //change the application state from loading to loaded
        yield PromotionLoaded(entity: _promotionDataList);
      } on NoSuchMethodError {

      }
    }
  }
}

