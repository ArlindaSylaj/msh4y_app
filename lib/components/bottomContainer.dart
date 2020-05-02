import 'package:flutter/material.dart';
import 'package:msh4y/constants.dart';

class BottomContainer extends StatelessWidget {
const BottomContainer({
Key key,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Container(
    color: Color(0xff404040),
    child: Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Column(
        children: <Widget>[
          Image.asset('images/logo.png',),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('What we do\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Text('Tutorials \n'
                      'Frontend\n'
                      'Backend\n'
                      'Mobile',
                    style: kParagraphStyle,
                  ),
                ],
              ),
//                      SizedBox(
//                        width: 10.0,
//                      ),
              Column(
                children: <Widget>[
                  Text('About us\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('About us\n'
                      'A team to help you\n'
                      'Feedbacks\n'
                      'Contact',
                    style: kParagraphStyle,
                  ),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                children: <Widget>[
                  Text('Legal\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Text('Privacy policy\n'
                      'Website terms\n'
                      'Cookie policy\n'
                      'Conflicts policy',
                    style: kParagraphStyle,
                  ),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                children: <Widget>[
                  Text('Site Info\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Text('Support\n'
                      'FAQ\n'
                      'Sitemap\n'
                      'Careers',
                    style: kParagraphStyle,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
}

