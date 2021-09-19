import 'package:flutter/material.dart';
import 'package:slt_broadband_application/pages/HomePage/home_page.dart';
import 'package:slt_broadband_application/pages/usage_page/usage_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SLT Broadband',
        initialRoute: '/home',
        routes: {'/home': (context) => HomePage(UsagePage())});
  }
}
