import 'package:flutter/material.dart';
import 'package:clothing_app/utils/constants.dart';

class TheOutfitOutlinedButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;

  TheOutfitOutlinedButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: primaryColor, fontSize: 14),
      ),

      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1, color: primaryColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
      ),
    );
  }
}
