import 'package:flutter/material.dart';
import 'package:clothing_app/common/the_outfit_header.dart';
import 'package:clothing_app/common/the_outfit_separator.dart';
import 'package:clothing_app/common/the_outfit_wrapper.dart';
import 'package:clothing_app/utils/constants.dart';

import 'how_it_works_cta.dart';
import 'how_it_works_step.dart';

class HowItWorksScreen extends StatelessWidget {
  const HowItWorksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TheOutfitWrapper(
      hasBack: true,
      hasMenu: true,
      isList: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
                child: Text(
              'Cum funcționează?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
          ),
          SizedBox(
            height: 8,
          ),
          TheOutfitSeparator(),
          SizedBox(
            height: 32,
          ),
          HowItWorksStep(
              1,
              'Creează-ți',
              'profilul',
              'pe stilul și corpul tău',
              'assets/images/creeaza-profilul_1.svg',
              'Spune-ne despre ce îți place să porți, preferințele de preț și mărime ale hainelor răspunzând întrebărilor noastre care ne vor ajuta să te cunoaștem în detaliu.'),
          HowItWorksStep(
              2,
              'Plătește doar 49lei în avans*',
              'vor fi aplicați ca reducere la produse',
              '',
              'assets/images/how_it_works_2.svg',
              '*Suma de 49 lei plătită la început acopera pregatirea setului tău de către un stilist vestimentar din echipa noastră. Această sumă de 49 lei va fi aplicată ca reducere dacă păstrezi minim 1 produs.'),
          HowItWorksStep(
              3,
              '',
              'Stilistul',
              'tău va alege outfit-urile potrivite',
              'assets/images/how_it_works_3.svg',
              'Stilistul tău va alege din zecile de branduri disponibile și va construi o serie de oufit-uri și recomandări. Vei primi odată cu hainele și recomandările stilistului.'),
          HowItWorksStep(
              4,
              'Probează hainele acasă și',
              'plătește doar ce păstrezi',
              '',
              'assets/images/how_it_works_4.svg',
              '*Nu e nevoie să plătești pentru produse în avans! Vei avea 3 zile să probezi hainele primite în set-ul tău, plătești doar pentru produsele pe care vrei să le păstrezi, iar pe restul le poți returna fără nici un cost suplimentar.'),
          HowItWorksCta(),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
