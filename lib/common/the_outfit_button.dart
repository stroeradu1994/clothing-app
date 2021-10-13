import 'package:flutter/material.dart';
import 'package:clothing_app/utils/constants.dart';

class TheOutfitButton extends StatelessWidget {

  String text;
  bool small;
  VoidCallback onPressed;

  TheOutfitButton(this.text, this.small, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [primaryColor, gradientColor]),
            borderRadius: BorderRadius.circular(5)),
        child: Container(
          width: small ? 120 : 368,
          height: 36,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
