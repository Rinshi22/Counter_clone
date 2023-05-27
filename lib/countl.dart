import 'package:counter/homescreen.dart';
import 'package:counter/secondscreen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      routes:
          {
            'second_page':(context)=>const SecondScreen()

          },
        home:HomeScreen() );
  }
}
