import 'package:flutter/material.dart';
import 'package:msh4y/constants.dart';
import 'package:msh4y/components/buttons.dart';
class CoursesRow extends StatelessWidget {
  final String imageName;
  final String course;
  final String mentorName;

  CoursesRow({@required this.imageName,@required this.course,@required this.mentorName});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset('images/$imageName',
          width: 100,
          height: 100,),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text('$course\n',
                style: kCoursesHeadings,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Padding(
              padding:  EdgeInsets.only(left:8.0),
              child: Text('Mentor: $mentorName',
                style: kParagraphStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100.0,
        ),
        Buttons(buttonsText: 'Start Now', ),
      ],
    );
  }
}
