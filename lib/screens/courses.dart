import 'package:flutter/material.dart';
import 'package:msh4y/components/coursesRow.dart';
import 'package:msh4y/components/bottomContainer.dart';
import 'package:msh4y/constants.dart';
import 'package:msh4y/screens/mentors.dart';

class Courses extends StatefulWidget{
  static const String id = 'courses';

  @override
  State<StatefulWidget> createState() => _CoursesState();
}

class _CoursesState extends State<Courses>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(backgroundImage: 'courses-image.png',name: 'Courses'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CoursesRow(imageName: 'python-logo.png', course: 'Python',mentorName: 'Alvaro Morte',),
            CoursesRow(imageName: 'java-logo.jpeg', course: 'Java', mentorName: 'Alvaro Morte'),
            CoursesRow(imageName: 'html-css-js.jpg', course: 'HTML/ CSS/\n JAVASCRIPT', mentorName: 'Alavro Morte'),
            CoursesRow(imageName: 'flutter-logo.png', course: 'Flutter', mentorName: 'Ursula Cerbero'),
            CoursesRow(imageName: 'php-logo.png', course: 'PHP', mentorName: 'Esther Acebo'),
            CoursesRow(imageName: 'React.js_logo.png', course: 'React JS', mentorName: 'Miguel Herran'),
            CoursesRow(imageName: 'spring-logo.png', course: 'Spring', mentorName: 'Ursula Cerbero'),
            CoursesRow(imageName: 'angular-js-logo.png', course: 'Angular JS', mentorName: 'Esther Acebo'),
            CoursesRow(imageName: 'django.png', course: 'DJango', mentorName: 'Miguel Herran'),
            BottomContainer(),
          ],
        ),
      ),
    );
  }
  AppBar buildAppBar({String backgroundImage,String name}) {
    return AppBar(
      flexibleSpace: Image(
        image: AssetImage('images/$backgroundImage'),
        fit: BoxFit.cover,
      ),
      backgroundColor: Colors.transparent,
      title: Text('$name',style: kHeadingsStyle,),
      actions: <Widget>[
        Image.asset('images/logo.png'),
    IconButton(icon: Icon(Icons.navigate_next),
    onPressed: () {
    Navigator.pushNamed(context, Mentors.id);
    },
    ),
      ],
    );
  }
}

