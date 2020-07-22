import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'content_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Human selectedHuman;
  int height = 180;

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
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kLabelHightTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                ),
              ),
            ],
          )),
          Container(
            color: kColorContainerBottom,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kHeighContainer,
          ),
        ]);
  }
}

enum Human {
  male,
  female,
}
