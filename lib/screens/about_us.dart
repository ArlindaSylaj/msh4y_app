import 'package:flutter/material.dart';
import 'package:msh4y/constants.dart';
import 'package:msh4y/screens/courses.dart';
import 'package:msh4y/screens/mentors.dart';
import 'package:msh4y/Components/bottomContainer.dart';
import 'package:msh4y/components/buttons.dart';

class AboutUs extends StatefulWidget{
  static const String id = 'about_us';

  @override
  State<StatefulWidget> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(name: 'About us'),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(left: 10.0, bottom: 10.0),
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
                          padding: const EdgeInsets.only(top: 15.0),
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
                            Text('I learned python and I had the best tutor ever. \n'
                                'I love this platform. Next I \'m going to learn \n'
                                'another programming language,and I know I\'m not\n'
                                ' going to regret!',
                              style: kParagraphStyle,
                            ),
                            Text('Arlinda Sylaj',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                            ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Image.asset('images/stars.png',
                          width: 90.0, height: 90.0,
                        ),
                        Text('The best courses to learn HTML/CSS/JAVASCRIPT is here.\n'
                            ' I had so much fun learning for web desing!.',
                          style: kParagraphStyle,
                        ),
                        Text('Verone Kadriu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Image.asset('images/stars.png',
                          width: 90.0, height: 90.0,
                        ),
                        Text('My friends recomanded me this platform, and now \n'
                            'I\'m goind to tell the others how much I learned here.\n'
                            'No word to describe. Best tutors ever!!!',
                          style: kParagraphStyle,
                        ),
                        Text('Arlinda Osmani',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
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
      title: Text('$name',style: kHeadingsStyle,),
      actions: <Widget>[
        Image.asset('images/logo.png'),
        IconButton(icon: Icon(Icons.navigate_next),
        onPressed: () {
        Navigator.pushNamed(context, Courses.id);
        },
        ),
      ],
    );
  }
}



