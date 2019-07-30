import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

AssetImage one = new AssetImage("images/one.png");
AssetImage two = new AssetImage("images/two.png");
AssetImage three = new AssetImage("images/three.png");
AssetImage four = new AssetImage("images/four.png");
AssetImage five = new AssetImage("images/five.png");
AssetImage six = new AssetImage("images/six.png");

AssetImage _diceImage;

  void diceRoller(){
  var rndNum = Random().nextInt(5);
  rndNum++;
  AssetImage _newImage;
  switch(rndNum){
    case 1: _newImage = one;
    break;
    case 2: _newImage = two;
    break;
    case 3: _newImage = three;
    break;
    case 4: _newImage = four;
    break;
    case 5: _newImage = five;
    break;
    case 6: _newImage = six;
    break;
  }

  setState(() {
   _diceImage = _newImage; 
  });

}

@override
void initState() { 
  super.initState();
  setState(() {
   _diceImage = one; 
  });
}
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("Dice Roller"),
         ),
         body:Container(
             color: Colors.white,
             child: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Image(
                       image: _diceImage,
                       width: 200.0,
                       height:200.0,),
                   ),
                     Padding(
                       padding: const EdgeInsets.only(top: 80.0),
                       child: RaisedButton(                      
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: 
                           Text("Let's Roll it!",
                           style:TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18.0,
                             color: Colors.white)
                            ),
                         ),
                         color: Colors.blueAccent,
                       onPressed: diceRoller,
                       shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(28.0)),),
                     )
                 ],
               ),
             ),
           ),
       ));

  }

}