import 'package:flutter/material.dart';
import 'package:msh4y/components/coursesRow.dart';
import 'package:msh4y/components/bottomContainer.dart';
import 'package:msh4y/constants.dart';
import 'package:msh4y/screens/mentors.dart';
import 'package:msh4y/screens/home_page.dart';
import 'package:msh4y/screens/about_us.dart';

class Courses extends StatefulWidget{
  static const String id = 'courses';

  @override
  State<StatefulWidget> createState() => _CoursesState();
}

class _CoursesState extends State<Courses>{
  String selectedScreen ;

  DropdownButton<String> androidDropdown(){
    List<DropdownMenuItem<String>> dropdownItems = [];

    for(String routes in nameOfRoute){
      var newItem = DropdownMenuItem(
        child: Text(routes),
        value: routes,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedScreen,
      items:  dropdownItems,
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.list,color: Colors.white,),
      ),
      onChanged: (value){
        setState(() {
          selectedScreen = value;
          switch(value){
            case 'HomePage' : Navigator.pushNamed(context, HomePage.id);
            break;
            case 'AboutUs': Navigator.pushNamed(context, AboutUs.id);
            break;
            case 'Courses' : Navigator.pushNamed(context, Courses.id);
            break;
            case 'Mentors' : Navigator.pushNamed(context, Mentors.id);
            break;
          };
        },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(backgroundImage: 'unnamed.jpg',name: 'Courses'),
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
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:100.0),
          child: Row(children: <Widget>[
            Image.asset('images/logo.png',width: 100),
            Text('$name',style: TextStyle(fontSize: 14.0,color: Colors.black,fontStyle: FontStyle.italic)),
          ],),
        ),
        androidDropdown(),
      ],
    );
  }
}

