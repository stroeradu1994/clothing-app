import 'package:flutter/material.dart';
import 'package:clothing_app/common/the_outfit_wrapper.dart';

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TheOutfitWrapper(
        hasBack: true,
        hasMenu: false,
        isList: false,
        child: Column(
          children: [
            Text('Register')
          ],
        ));
  }
}
