import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clothing_app/account/login.dart';
import 'package:clothing_app/account/register.dart';
import 'package:clothing_app/common/the_outfit_menu_item.dart';
import 'package:clothing_app/common/the_outfit_separator.dart';
import 'package:clothing_app/home/home_screen.dart';
import 'package:clothing_app/home/home_screen_v2.dart';
import 'package:clothing_app/how_it_works/how_it_works_screen.dart';
import 'package:clothing_app/profile_creation/profile_creation_screen.dart';

class TheOutfitMenu extends StatelessWidget {
  bool hasBack;
  VoidCallback onNavigation;

  TheOutfitMenu({required this.hasBack, required this.onNavigation});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TheOutfitMenuItem(() => navigate(context, HomeScreen(), true),
                'Home V1', hasBack),
            TheOutfitMenuItem(() => navigate(context, HomeScreenV2(), true),
                'Home V2', hasBack),
            TheOutfitMenuItem(
                () => navigate(context, HowItWorksScreen(), false),
                'Cum funcționează',
                hasBack),
            TheOutfitMenuItem(
                () => navigate(context, ProfileCreationScreen(), false),
                'Crează-ți profilul',
                hasBack),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
                child: TheOutfitSeparator(
                  center: hasBack ? true : false,
                ),
              ),
            ),
            TheOutfitMenuItem(
                () => navigate(context, Login(), false), 'Contul Meu', hasBack),
          ],
        ),
      ),
    );
  }

  navigate(context, Widget route, bool replace) {
    onNavigation();
    Navigator.popUntil(context, (route) => route.isFirst);
    replace
        ? Navigator.pushReplacement(
            context,
            CupertinoPageRoute(builder: (context) => route),
          )
        : Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => route),
          );
  }
}
