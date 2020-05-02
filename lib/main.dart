import 'package:flutter/material.dart';
import 'package:msh4y/screens/home_page.dart';
import 'package:msh4y/screens/about_us.dart';
import 'package:msh4y/screens/courses.dart';
import 'package:msh4y/screens/mentors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: AboutUs.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        AboutUs.id : (context) => AboutUs(),
        Courses.id : (context) => Courses(),
        Mentors.id : (context) => Mentors(),
      },
    ) ;
  }
}