import 'package:get_it/get_it.dart';
import 'package:slt_broadband_application/pages/history_page/bloc/history_bloc.dart';
import 'package:slt_broadband_application/pages/history_page/bloc/history_state.dart';
import 'package:slt_broadband_application/pages/history_page/usecase/get_history_data_usecase.dart';
import 'package:slt_broadband_application/pages/promo_page/bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:slt_broadband_application/pages/promo_page/usecase/get_promo_data_usecase.dart';


final sl = GetIt.instance;

Future<void> init() {
  //! Features - Keep up

  //bloc
  sl.registerFactory(() => PromoBloc(
      getPromotionDataList: sl()
  ));

  sl.registerFactory(() => HistoryBloc(
      getHistoryDataList: sl()
  ));


  sl.registerFactory(() => PromotionLoaded(
      entity: sl()
  ));

  sl.registerFactory(() => HistoryLoaded(
      entity: sl()
  ));

  //use case
  sl.registerLazySingleton<GetPromotionDataList>(() => GetPromotionDataList(
      client: sl()
  ));

  sl.registerLazySingleton<GetHistoryDataList>(() => GetHistoryDataList(
      client: sl()
  ));

  //! Core
  //TODO yet to implment core
  sl.registerLazySingleton(() => http.Client());
  //! Externals
  //TODO implemnt externals
}