import 'package:flutter/material.dart';
import 'package:msh4y/screens/about_us.dart';
import 'package:msh4y/screens/courses.dart';
import 'package:msh4y/screens/mentors.dart';
import 'package:msh4y/constants.dart';

class HomePage extends StatefulWidget{
  static const String id = 'home_page';

  @override
  State<StatefulWidget> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  String selectedScreen = 'HomePage';


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff585858),
            title: Image.asset('images/logo.png'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.pushNamed(context, AboutUs.id);
                },
              ),
            ],
          ),
          body: Expanded(
              child: Column(
                children: <Widget>[
                ],
              ))
      ),
    );
  }
}
