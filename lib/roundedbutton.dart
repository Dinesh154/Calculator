import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText,
    required this.colorText,
    required this.onPressed,
    required this.buttonBoxShape,
    required this.buttonWidth,
  }) : super(key: key);
  final String buttonText;
  final Color colorText;
  final VoidCallback onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double buttonWidth;

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 6,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        boxShape: widget.buttonBoxShape,
        color: Color(0xFFEDEBEC),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
