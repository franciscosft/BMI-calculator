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
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
