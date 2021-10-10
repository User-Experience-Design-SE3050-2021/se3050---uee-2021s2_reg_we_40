import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slt_broadband_application/pages/HomePage/home_page.dart';
import 'package:slt_broadband_application/pages/change_brodband_password/change_broadband_password.dart';
import 'package:slt_broadband_application/pages/change_contact_info_page/change_contact_info_page.dart';
import 'package:slt_broadband_application/pages/profile_page/bloc/bloc.dart';
import 'package:slt_broadband_application/pages/usage_page/usage_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xff118DD2)
                ),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Container(
                          child: Icon(Icons.person,size: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        ),
                      ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('UserName   :   946726782',style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Name         :    Kolin Morgan',style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Email        :    koilnmorgan@gmail.com',style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Package      :    WEB Family',style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Billing Date :    1st of March',style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                                width: 200,
                                height: 50,
                                child: SLTRoundedButton(onPressed: ()=>{},label:'Sign Out',))
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            )),
        Expanded(
            flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff118DD2)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(Icons.person_add_rounded, color: Colors.white,),
                              Text('Add User', style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff118DD2)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(Icons.swap_horizontal_circle_rounded, color: Colors.white,),
                              Text('Switch User', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ProfilePageTiles(label: 'Change Contact Information',firstIcon: Icons.perm_device_information,onPressed: () =>Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage(ChangeContactInfo(), 'Change Contact Info')),
        ),),
        ProfilePageTiles(label: 'Change Brodband password',firstIcon: Icons.vpn_key_rounded,onPressed: () =>Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage(ChangeBroadBandPassword(), 'Change Contact Info')),
        ),),
        ProfilePageTiles(label: 'Change portal/App password',firstIcon: Icons.lock,onPressed: () =>Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage(ChangeContactInfo(), 'Change Contact Info')),
        ),),
        ProfilePageTiles(label: 'Disable Detailed report',firstIcon: Icons.upload_file,onPressed: () =>Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage(ChangeContactInfo(), 'Change Contact Info')),
        ),),

      ],
    );
  }

  BlocProvider<ProfileBloc> buildBody(BuildContext){

  }
}

class ProfilePageTiles extends StatelessWidget {
  final String label;
  final IconData firstIcon;
  final Function onPressed;
  ProfilePageTiles({
    Key key, this.label, this.firstIcon, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: this.onPressed,
            color: Color(0xff118DD2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(firstIcon, color: Colors.white,),
                Text(label, style: TextStyle(color: Colors.white,fontSize: 18),),
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,),
              ],
            ),
          ),
        ));
  }
}
