import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class calculatorBrain {
  String output = '0';
  String _output = " ";
  dynamic num1 = 0;
  dynamic num2 = 0;
  String operator = "";
  String resultOperationText = "";
  bool isPressedPercentageButton = true;

  String buttonPressed(String buttontext) {
    if (buttontext == "AC") {
      _output = "";
      num1 = 0;
      num2 = 0;
      operator = "";
      output = "0";
      resultOperationText = "";
      isPressedPercentageButton = true;
      return output;
    } else if (buttontext == "+/-") {
      isPressedPercentageButton = true;
      if (_output.contains("-", 0)) {
        print("Already contains a minus");
        _output = _output + '';
        output = _output;
        resultOperationText = output;
      } else {
        _output = "-" + _output;
        output = _output;
        resultOperationText = output;
      }
      return output;
    } else if (buttontext == "%") {
      if (isPressedPercentageButton) {
        if (output.contains(".")) {
          num1 = double.parse(output);
        } else {
          num1 = int.parse((output));
        }
        _output = (num1 / 100).toString();
        output = _output;
        resultOperationText = output;
        return output;
      }
    } else if (buttontext == "+" ||
        buttontext == "-" ||
        buttontext == "*" ||
        buttontext == "÷") {
      if (output.contains(".")) {
        num1 = double.parse(output);
      } else {
        num1 = int.parse(output);
      }
      operator = buttontext;
      resultOperationText = operator;
      print(operator);
      _output = "";
    } else if (buttontext == ".") {
      if (_output.contains(".")) {
        print("Already contains a decimal");
        _output = "";
        output + _output;
        resultOperationText = output;
      } else {
        _output = _output + buttontext;
        output = _output;
        resultOperationText = output;
      }
    } else if (buttontext == "=") {
      isPressedPercentageButton = true;
      if (output.contains(".")) {
        num2 = double.parse(output);
      } else {
        num2 = int.parse(output);
      }
      if (operator == "+") {
        _output = (num1 + num2).toString();
      }
      if (operator == "-") {
        _output = (num1 - num2).toString();
      }
      if (operator == "x") {
        _output = (num1 * num2).toString();
      }
      if (operator == "÷") {
        _output = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operator = "";
      if (_output.contains(".")) {
        output = double.parse(_output).toStringAsFixed(2);
      } else {
        output = _output;
      }
      resultOperationText = " ";
      _output = '';
    } else {
      _output = _output + buttontext;
      output = _output;
      resultOperationText = resultOperationText + buttontext;
    }
    print(_output);
    return output;
  }
}
