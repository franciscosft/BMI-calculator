import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'content_card.dart';

const heighContainer = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const colorContainetBottom = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Human selectedHuman;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: getStages(),
    );
  }

  Column getStages() {
    return Column(children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedHuman = Human.male;
                  });
                },
                colour: selectedHuman == Human.male
                    ? activeCardColor
                    : inactiveCardColor,
                cardChild: ContentCard(
                  iconData: FontAwesomeIcons.mars,
                  textContent: "Masculino",
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedHuman = Human.female;
                  });
                },
                colour: selectedHuman == Human.female
                    ? activeCardColor
                    : inactiveCardColor,
                cardChild: ContentCard(
                  iconData: FontAwesomeIcons.venus,
                  textContent: "Feminino",
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: ReusableCard(
          colour: activeCardColor,
        ),
      ),
      Expanded(
          child: Row(
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
        ],
      )),
      Container(
        color: colorContainetBottom,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: heighContainer,
      ),
    ]);
  }
}

enum Human {
  male,
  female,
}
