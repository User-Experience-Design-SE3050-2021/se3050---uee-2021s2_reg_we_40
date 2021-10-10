
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:slt_broadband_application/common%20widgets/charts/doughnut/doughnut_chart.dart';



class FreeData extends StatefulWidget {
  const FreeData({Key key}) : super(key: key);

  @override
  _FreeDataState createState() => _FreeDataState();
  
}

class _FreeDataState extends State<FreeData> {
 
   @override
  void initState() {
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    
    return Column(
  
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 300),
           child:Center(child: Text(
             "Await for Free DATA !",
              style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),),
           )
          
     
      
        
              
        

      ]
     
      
    );
  }
}
