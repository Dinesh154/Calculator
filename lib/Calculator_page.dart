import 'package:calculator/calculator_brain.dart';
import 'package:calculator/constants.dart';
import 'package:calculator/roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "0";
  calculatorBrain calc = calculatorBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEBEC),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 70,
                      maxWidth: 300,
                    ),
                    child: Text(
                      result,
                      style: kresultTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    calc.resultOperationText,
                    style: kOperationTextStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "AC",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("AC");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "+/-",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("+/-");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "%",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("%");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kOrangeColorText,
                        buttonWidth: 10,
                        buttonText: "÷",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("÷");
                          });
                        },
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "7",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("7");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "8",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("8");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "9",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("9");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kOrangeColorText,
                        buttonWidth: 8,
                        buttonText: "+",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("+");
                          });
                        },
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "4",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("4");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "5",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("5");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "6",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("6");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kOrangeColorText,
                        buttonWidth: 8,
                        buttonText: "-",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("-");
                          });
                        },
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "1",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("1");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "2",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("2");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: "3",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("3");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kOrangeColorText,
                        buttonWidth: 8,
                        buttonText: "x",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("x");
                          });
                        },
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(60.0),
                        ),
                        colorText: kBlackColorText,
                        buttonWidth: 2.9,
                        buttonText: "0",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("0");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kBlackColorText,
                        buttonWidth: 8,
                        buttonText: ".",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed(".");
                          });
                        },
                      ),
                      RoundedButton(
                        buttonBoxShape: NeumorphicBoxShape.circle(),
                        colorText: kOrangeColorText,
                        buttonWidth: 8,
                        buttonText: "=",
                        onPressed: () {
                          setState(() {
                            result = calc.buttonPressed("=");
                          });
                        },
                      ),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
