import 'package:flutter/material.dart';
import 'package:msh4y/constants.dart';
class Buttons extends StatelessWidget {
  final String buttonsText;
  final routeName;
  const Buttons({@required this.buttonsText,this.routeName}) ;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '$routeName');
      },
      child: Text('$buttonsText',
        style: kButtonsTextStyle,
      ),
      color: Color(0xff202020),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}