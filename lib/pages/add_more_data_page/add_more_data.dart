import 'package:flutter/material.dart';
import 'package:slt_broadband_application/utils/constants.dart';

class AddMoreData extends StatefulWidget {
  @override
  _AddMoreDataState createState() => _AddMoreDataState();
}

class _AddMoreDataState extends State<AddMoreData> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height,
      child:Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/6,
            child: Row(
              children: <Widget>[
                DataCard(value: '1GB',amount: 'Rs.500',),
                DataCard(value: '2GB',amount: 'Rs.1000',),
                DataCard(value: '3GB',amount: 'Rs.1500',)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Rs. 85 per GB',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          Expanded(
            child: Container(
              child: GridView.count(crossAxisCount: 3,
    children: List.generate(ADD_MORE_DATA_CARDS.length, (index) {
      return DataCard(value: ADD_MORE_DATA_CARDS[index]['value'],amount: ADD_MORE_DATA_CARDS[index]['amount'],);
    }  ,),

            )),
          ),
        ]
      ),
    );
  }
}

class DataCard extends StatelessWidget {
  final String value,amount;
   DataCard({
    Key key, this.value, this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            color: Color(0xff1D89CF),
            onPressed: ()=>showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Payment'),
                content: const Text('Are you sure you want to purchase'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(value, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                Text(amount, style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ),
    );
  }
}
