import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:slt_broadband_application/pages/profile_page/bloc/bloc.dart';
import 'package:slt_broadband_application/pages/profile_page/usecase/get_profile_data_usecase.dart';




class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  //use case to be called
  final GetProfileData getProfileData;

  ProfileBloc({
    @required this.getProfileData
  });

  @override
  ProfileState get initialState => ProfileEmpty();

  @override
  Stream<ProfileState> mapEventToState(
      ProfileEvent event,
      ) async* {
    if(event is GetProfileEvent) {

      yield ProfileLoading();

      try {
        //call the usecase to get data
        final _promotionDataList = await getProfileData(Params(id: event.id));

        //change the application state from loading to loaded
        yield ProfileLoaded(entity: _promotionDataList);
      } on NoSuchMethodError {

      }
    }
  }
}

