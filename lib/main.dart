import 'package:dice_roller/HomePage.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MainActivity());
}

class MainActivity extends StatelessWidget {
  const MainActivity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[800],
        primaryColorDark: Colors.black,
        accentColor: Colors.deepOrange
      ),
      home: HomePage(),
    );
  }
}