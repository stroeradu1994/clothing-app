import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:clothing_app/common/the_outfit_separator.dart';
import 'package:clothing_app/utils/constants.dart';

class HowItWorksStep extends StatelessWidget {
  int step;
  String firstHeader;
  String secondHeader;
  String thirdHeader;
  String imagePath;
  String description;

  HowItWorksStep(this.step, this.firstHeader, this.secondHeader,
      this.thirdHeader, this.imagePath, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Pasul ' + step.toString(),
            style: TextStyle(
                color: primaryColor, fontSize: 12, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(text: '', children: <TextSpan>[
                TextSpan(
                  text: firstHeader + ' ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: secondHeader + ' ',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: thirdHeader,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TheOutfitSeparator(),
          SizedBox(
            height: 8,
          ),
          Container(
            child: SvgPicture.asset(imagePath),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 64,
          ),
        ],
      ),
    );
  }
}
