import 'package:flutter/material.dart';


class ColorDot extends StatelessWidget {
  ColorDot({Key? key, required this.fillColor, required this.isSelected}) : super(key: key);
  final Color fillColor;
   bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Color(0xFF707070):Colors.transparent,


        ),

      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),

      ),

    );
  }
}
