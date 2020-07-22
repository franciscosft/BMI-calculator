import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  ContentCard({this.iconData, this.textContent});

  final IconData iconData;
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          size: 70.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          textContent,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
