import 'package:flutter/material.dart';
import 'package:msh4y/constants.dart';
import 'package:msh4y/components/bottomContainer.dart';
import 'package:msh4y/screens/home_page.dart';
import 'package:msh4y/screens/about_us.dart';
import 'package:msh4y/screens/courses.dart';

class Mentors extends StatefulWidget{
  static const String id = 'mentors';

  @override
  State<StatefulWidget> createState() => _MentorState();
}

class _MentorState extends State<Mentors> {
 String selectedScreen ;
  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String routes in nameOfRoute) {
      var newItem = DropdownMenuItem(
        child: Text(routes),
        value: routes,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedScreen,
      items: dropdownItems,
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.list,color: Colors.black,),
      ),
      onChanged: (value) {
        setState(() {
          selectedScreen = value;
          switch (value) {
            case 'HomePage' :
              Navigator.pushNamed(context, HomePage.id);
              break;
            case 'AboutUs':
              Navigator.pushNamed(context, AboutUs.id);
              break;
            case 'Courses' :
              Navigator.pushNamed(context, Courses.id);
              break;
            case 'Mentors' :
              Navigator.pushNamed(context, Mentors.id);
              break;
          };
        },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(backgroundImage: 'unnamed.jpg',
      name: 'Mentors'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    mentorsIntroduction(imageName: 'alvaro-morte.jpg', name: 'Alvaro Morte', state: 'Spain',category: 'Frontend/Backend'),
                    SizedBox( height: 25.0, ),
                    mentorsIntroduction(imageName: 'ursula-corbero.jpg', name: 'Ursula Corbero', state: 'Barcelona',category: 'Mobile'),
                    SizedBox( height: 25.0, ),
                    mentorsIntroduction(imageName: 'esther-acebo.jpg', name: 'Ester Acebo', state: 'Spain',category: 'Teaching assistant '),
                    SizedBox( height: 25.0, ),
                    mentorsIntroduction(imageName: 'miguel-herran.jpg', name: 'Miguel Herran', state: 'Barcelona',category: 'ReactJS'),
                  ]),
                  SizedBox(
                    width: 85.0,
                  ),
                  /**Search bar*/
                  Column(
                    children: <Widget>[
                      Text('Categories\n',style: kHeadingsStyle,),
                      Text('Frontend\n\n' +
                          'Backend\n\n'+
                          'Mobile', style: kParagraphStyle,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Frontend\n',style: kHeadingsStyle,),
                      Text('    HTML\n\n' +
                          '   CSS\n\n'+
                          ' JAVASCRIPT\n\n'
                              '   PHP', style: kParagraphStyle,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Backend\n',style: kHeadingsStyle,),
                      Text('Java\n\n' +
                          'Python\n\n',style: kParagraphStyle,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Mobile\n',style: kHeadingsStyle,),
                      Text('Flutter\n\n' , style: kParagraphStyle,)
                    ],
                  ),
                ],
              ),
            ),
            BottomContainer(),
          ],
        ),

      ),
    );
  }

  Column mentorsIntroduction({String imageName,String name, String state,String category}) {
    return Column(
                  children: <Widget>[
                    Image.asset('images/$imageName',
                    width: 150,height: 150,
                    ),
                    Text('$name',style: kHeadingsStyle,),
                    Text('$state | $category',style: kParagraphStyle,),
                  ],
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
        ),        androidDropdown(),
      ],
    );
  }
}


