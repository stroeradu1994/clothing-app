import 'package:flutter/material.dart';
import 'package:clothing_app/common/the_outfit_rich_text.dart';
import 'package:clothing_app/utils/constants.dart';

class HomeCardComponent extends StatelessWidget {
  List<TheOutfitRichTextItem> items;

  Widget image;

  HomeCardComponent(this.items, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: primaryColor),
      ),
      width: 260,
      height: 360,
      padding: EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Container(height: 300, child: image),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TheOutfitRichText(items, false),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
