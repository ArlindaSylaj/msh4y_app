import 'package:flutter/material.dart';

class TheAppBar {
  AppBar buildAppBar({String backgroundImage,String name}) {
    return AppBar(
      flexibleSpace: Image(
        image: AssetImage('images/$backgroundImage'),
        fit: BoxFit.cover,
      ),
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:100.0),
          child: Column(children: <Widget>[
            Image.asset('images/logo.png',width: 100),
            Text('$name',style: TextStyle(fontSize: 14.0,color: Colors.white,fontStyle: FontStyle.italic)),
          ],),
        ), // androidDropdown(),
      ],
    );
  }
}