import 'package:flutter/material.dart';
import 'package:clothing_app/common/the_outfit_button.dart';
import 'package:clothing_app/utils/constants.dart';

class HowItWorksCta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Stilistul tău va face shopping pentru tine!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Creează-ți profilul și comandă un set de 5 obiecte vestimentare alese de stilistul tău',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
            SizedBox(height: 16),
            TheOutfitButton('Crează-ți profilul', false, () {}),
          ],
        ),
      ),
    );
  }
}
