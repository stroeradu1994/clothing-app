import 'package:flutter/material.dart';
import 'package:clothing_app/utils/constants.dart';

class TheOutfitSeparator extends StatelessWidget {
  bool center = true;

  TheOutfitSeparator({this.center = true});

  @override
  Widget build(BuildContext context) {
    return center ? Center(child: getSeparator()) : getSeparator();
  }

  Widget getSeparator() {
    return Container(
      width: 60,
      color: primaryColor,
      height: 3,
    );
  }
}
