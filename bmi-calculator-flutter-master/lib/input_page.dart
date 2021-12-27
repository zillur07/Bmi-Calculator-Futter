import 'package:bmi_calculator/iconContent.dart';
import 'package:bmi_calculator/reusableCode.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCordColor = Color(0xFF1D1E33);
const inActiveCordColor = Color(0xFF121325);
const bottomContainerColor = Color(0xFFEB1555);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

//   Color maleCardColour = inActiveCordColor;
//   Color femaleCardColour = inActiveCordColor;
// // 1= male, 2= female
//   void updateColour(Gender selectedGender) {
//     //1= male,
//     if (selectedGender == Gender.male) {
//       if (maleCardColour == inActiveCordColor) {
//         maleCardColour = activeCordColor;
//         femaleCardColour = inActiveCordColor;
//       } else {
//         maleCardColour = inActiveCordColor;
//       }
//     }
//     //2= female
//     if (selectedGender == Gender.female) {
//       maleCardColour = inActiveCordColor;
//       femaleCardColour == inActiveCordColor
//           ? femaleCardColour = activeCordColor
//           : femaleCardColour = inActiveCordColor;
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        // updateColour(Gender.male);
                      });
                    },
                    child: ReusableCode(
                      colour: selectedGender == Gender.male
                          ? activeCordColor
                          : inActiveCordColor,
                      // colour: maleCardColour,
                      cardChild: IconContent(
                        icon: Icons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        //updateColour(Gender.female);
                      });
                    },
                    child: ReusableCode(
                      colour: selectedGender == Gender.female
                          ? activeCordColor
                          : inActiveCordColor,
                      // colour: femaleCardColour,
                      cardChild: IconContent(
                        icon: Icons.female_outlined,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCode(
              colour: activeCordColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCode(
                    colour: activeCordColor,
                  ),
                ),
                Expanded(
                  child: ReusableCode(
                    colour: activeCordColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: bottomContainerColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      // floatingActionButton: Theme(
      //   data: ThemeData(accentColor: Color(0xFFFF5252)),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}
