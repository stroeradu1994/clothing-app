import 'package:flutter/material.dart';
import 'package:clothing_app/utils/constants.dart';

class TheOutfitRichText extends StatelessWidget {
  List<TheOutfitRichTextItem> items;
  bool center;

  TheOutfitRichText(this.items, this.center);

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textItems = items
        .map((item) => TextSpan(
              text: item.text,
              style: TextStyle(
                  color: item.isColored ? primaryColor : Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ))
        .toList();

    return RichText(
      textAlign: center ? TextAlign.center : TextAlign.start,
      text: TextSpan(text: '', children: textItems),
    );
  }
}

class TheOutfitRichTextItem {
  String text;
  bool isColored;

  TheOutfitRichTextItem(this.text, this.isColored);
}
