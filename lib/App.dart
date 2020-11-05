import 'package:flutter/material.dart';
import 'package:wedevs/src/pages/DetailsWebDesign.dart';
import 'package:wedevs/src/pages/HomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/':(BuildContext context) => HomePage(),
        'detailsWD':(BuildContext context)=>DetailsWD()
      },
    );
  }
}
