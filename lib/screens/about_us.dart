import 'package:flutter/material.dart';
import 'package:msh4y/constants.dart';
import 'package:msh4y/screens/courses.dart';
import 'package:msh4y/screens/mentors.dart';
import 'package:msh4y/Components/bottomContainer.dart';
import 'package:msh4y/components/buttons.dart';
import 'package:msh4y/screens/home_page.dart';

class AboutUs extends StatefulWidget{
  static const String id = 'about_us';

  @override
  State<StatefulWidget> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
    return Scaffold(
      appBar: buildAppBar(
        name: 'About Us',
        backgroundImage: 'unnamed.jpg',
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(left: 10.0, bottom: 10.0,top: 20.0),
                  child: Row(
                    children: <Widget>[
                    Image.asset('images/aboutuspic1.jpg',
                        width: 100.0,
                        height: 100.0,
                    ),
                    SizedBox(
                      width: 18.0,
                    ),
                    Column(
                    children: <Widget>[
                      Text('A team to help you',
                        style: kHeadingsStyle,
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Text('In this platform you can find the \n'
                          'best courses  and the best mentors. \n'
                          'All mentors are qualified\n '
                          'for the specific field.\n '
                          'You are going to love them!',
                        style: kParagraphStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Buttons(buttonsText: 'Find out more',
                        routeName: Mentors.id,
                      ),
                    ],
                    ),
                  ],
                ),
                ),
                  Container(
                    color: Color(0xff212529),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0,bottom: 0.0),
                          child: Text('What Our Stundents Say',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),

                            Image.asset('images/stars.png',
                              width: 90.0, height: 90.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('I learned python and I had the best tutor ever. '
                                  'I love this platform. Next I \'m going to learn '
                                  'another programming language,and I know I\'m not'
                                  ' going to regret!',
                                style: kParagraphStyle,
                              ),
                            ),
                            Text('Arlinda Sylaj',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                              textAlign: TextAlign.end,
                            ),
                        SizedBox(
                          height: 5.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('The best courses to learn HTML/CSS/JAVASCRIPT is here.'
                              ' I had so much fun learning for web desing!.',
                            style: kParagraphStyle,
                          ),
                        ),
                        Text('Verone Kadriu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('My friends recomanded me this platform, and now '
                              'I\'m goind to tell the others how much I learned here.'
                              'No word to describe. Best tutors ever!!!',
                            style: kParagraphStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:18.0),
                          child: Text('Arlinda Osmani',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        )
                    ],
                  ),
                ),
                BottomContainer()
                ],
            ),
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
        ),        androidDropdown(),
      ],
    );
  }
}



