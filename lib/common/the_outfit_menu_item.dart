import 'package:flutter/material.dart';

class TheOutfitMenuItem extends StatelessWidget {
  VoidCallback onTap;
  String text;
  bool center;

  TheOutfitMenuItem(this.onTap, this.text, this.center);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Text(
          text,
          textAlign: center ? TextAlign.center : TextAlign.start,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
