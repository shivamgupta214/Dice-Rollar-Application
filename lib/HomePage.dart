import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage1;
  AssetImage diceimage2;

  @override
  void initState() { 
    super.initState();
    setState(() {
      diceimage1 = one;
      diceimage2 = one;
    });
  }

  void rollDice1(){
    int random = (1+ Random().nextInt(6));

    AssetImage newImage1;

    switch (random) {
      case 1:
        newImage1 = one;
        break;
        case 2:
        newImage1 = two;
        break;
        case 3:
        newImage1 = three;
        break;
        case 4:
        newImage1 = four;
        break;
        case 5:
        newImage1 = five;
        break;
        case 6:
        newImage1 = six;
        break;
      default:
    }
     setState(() {
      diceimage1 = newImage1;
    });
  }
    void rollDice2(){
    int random = (1+ Random().nextInt(6));

    AssetImage newImage2;

    switch (random) {
      case 1:
        newImage2 = one;
        break;
        case 2:
        newImage2 = two;
        break;
        case 3:
        newImage2 = three;
        break;
        case 4:
        newImage2 = four;
        break;
        case 5:
        newImage2 = five;
        break;
        case 6:
        newImage2 = six;
        break;
      default:
    }
    setState(() {
      diceimage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title : Text('Dice Roller'),
      ),
      body: Container(
        child : Center (
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center ,
            children : <Widget>[
              Expanded(
                child: Image (
                image: diceimage1,
                width: 100.0,
                height: 100.0,
                ),
              ),
              Spacer(flex:1),
              Expanded(
                child: Image(
                image: diceimage2,
                width : 200.0,
                height : 200.0,
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top:50.0),
                child : new RaisedButton(
                  onPressed: rollDice1,
                  child: Text('Roll the Dice!'),
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200.0),
                child : new RaisedButton(
                  onPressed: rollDice2,
                  child: Text('Roll the Dice!'),
                  color: Colors.yellow,
                ), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}