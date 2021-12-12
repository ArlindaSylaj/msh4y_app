import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List< String > nameOfRoute = [
  'HomePage',
  'AboutUs',
  'Courses',
  'Mentors',
];

const kHeadingsStyle = TextStyle(
  color: Color(0xff181818),
  fontSize: 19.0,
  fontWeight: FontWeight.bold
);

const kParagraphStyle = TextStyle(
  color: Color(0xff888888),
  fontSize: 13.0,
);

const kButtonsTextStyle = TextStyle(
  color: Colors.white,

);

const kCoursesHeadings = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
);
const kHomePageHeadings = TextStyle(
  color: Colors.white ,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const kHomeHeadings = TextStyle(
  color: Colors.white ,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const kHomePageParagraphs = TextStyle(
  color: Colors.white,
    fontSize: 13.0
);
//dsjfhkashfkadfksah
const kTextFieldDecoration = InputDecoration(
  hintText: 'hello',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);