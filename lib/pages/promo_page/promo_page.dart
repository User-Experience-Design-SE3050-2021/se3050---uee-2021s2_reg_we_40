import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slt_broadband_application/pages/promo_page/bloc/bloc.dart';
import 'package:slt_broadband_application/pages/promo_page/widget/card.dart';
import 'package:slt_broadband_application/utils/constants.dart';

import '../../injectionContainer.dart';
import 'model/promo_entity.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key key}) : super(key: key);

  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  dispatchBlocCall({BuildContext context,startDate,endDate}){
    BlocProvider.of<PromoBloc>(context).dispatch(GetPromotionListEvent(startDate: startDate, endDate: endDate));
  }

  BlocProvider<PromoBloc> buildBody(BuildContext context){

    return BlocProvider(
        builder: (_) => sl<PromoBloc>(),
        child: BlocBuilder<PromoBloc, PromoState>(builder: (context, state){

          if(state is PromotionEmpty){
            dispatchBlocCall(context: context,startDate: null,endDate: null);
          }else if(state is PromotionLoading){
            return Center(child: Text('Loading....'));
          }else if( state is PromotionLoaded){
            return state.entity.promoEntityList != null ? ListView.builder(
              itemCount: state.entity.promoEntityList.length,
              itemBuilder: (context, index) {
                var data = state.entity.promoEntityList[index];
                return SLTPromoCard(
                  imageUrl: data.imageUrl,
                  amount: data.amount,
                  description: data.description,
                  titleText: data.title,
                );
              },
            ) : Text('No data');
          }
          return Container();
        },
        ));
  }
}
