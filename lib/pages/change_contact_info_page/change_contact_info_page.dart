import 'package:flutter/material.dart';

class ChangeContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue,
          ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 35.0),
                      child: Text('You may change your name, email, and phone number.',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 25.0),
                      child: TextField(

                          onChanged: (value) => {},
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.blue),
                              filled: true,
                              fillColor: Colors.white,
                          hintText: 'Full Name'
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 25.0),
                      child: TextField(
                        onChanged: (value) => {},
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.blue),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email'
                        ),),
                    )
                    ,Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 25.0),
                      child: TextField(
                        onChanged: (value) => {},
                        decoration: const InputDecoration(

                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.blue),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Mobile'
                        ),),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      onPressed: ()=>{},
                      color: Colors.blue[700],
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 15, bottom: 15),
                        child: Text('Done',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
