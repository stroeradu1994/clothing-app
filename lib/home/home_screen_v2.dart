import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:clothing_app/common/the_outfit_button.dart';
import 'package:clothing_app/common/the_outfit_outlined_button.dart';
import 'package:clothing_app/common/the_outfit_rich_text.dart';
import 'package:clothing_app/common/the_outfit_separator.dart';
import 'package:clothing_app/common/the_outfit_wrapper.dart';
import 'package:clothing_app/home/home_card_component.dart';
import 'package:clothing_app/how_it_works/how_it_works_screen.dart';
import 'package:clothing_app/profile_creation/profile_creation_screen.dart';
import 'package:clothing_app/utils/constants.dart';
import 'package:video_player/video_player.dart';

class HomeScreenV2 extends StatefulWidget {
  @override
  State<HomeScreenV2> createState() => _HomeScreenV2State();
}

class _HomeScreenV2State extends State<HomeScreenV2> {
  VideoPlayerController? _controller;
  List<HomeCardComponent> cards = [];

  int _index = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/images/TheOutfit-Video-2-2.mp4')
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
    _controller!.setLooping(true);
    _controller!.setVolume(0);
    _controller!.play();
    cards = [
      HomeCardComponent([
        TheOutfitRichTextItem('Creează-ți profilul cu toate ', false),
        TheOutfitRichTextItem('preferințele și nevoile ', true),
        TheOutfitRichTextItem('tale', false)
      ], VideoPlayer(_controller!)),
      HomeCardComponent([
        TheOutfitRichTextItem('Experiență de shopping', false),
        TheOutfitRichTextItem('100% personalizată ', true),
      ], Image.asset('assets/images/experienta-de-shopping.jpg')),
      HomeCardComponent([
        TheOutfitRichTextItem('Produse ', false),
        TheOutfitRichTextItem('alese de un stilist', true),
        TheOutfitRichTextItem(', special pentru tine', false),
      ], Image.asset('assets/images/produse-alese-de-un-stilist.jpg')),
      HomeCardComponent([
        TheOutfitRichTextItem('Livrare și retur ', false),
        TheOutfitRichTextItem('gratuit', true),
        TheOutfitRichTextItem('. Serviciul nu este un abonament', false),
      ], Image.asset('assets/images/livrare-si-retur-gratuit.jpg')),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TheOutfitWrapper(
      hasMenu: true,
      hasBack: false,
      isList: false,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Outfit-uri pentru',
                style: const TextStyle(
                    letterSpacing: 1.2,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 24.0,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText('o zi la birou',
                          speed: Duration(milliseconds: 50), cursor: ''),
                      TypewriterAnimatedText('un date reușit',
                          speed: Duration(milliseconds: 50), cursor: ''),
                      TypewriterAnimatedText('orice ocazie',
                          speed: Duration(milliseconds: 50), cursor: ''),
                      TypewriterAnimatedText('o cină în doi',
                          speed: Duration(milliseconds: 50), cursor: ''),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TheOutfitSeparator(center: false),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
              'Spune-ne despre stilul, bugetul și preferințele tale. Îți vom livra produsele potrivite, vom învăța din feedback și vom fi acolo pentru toate ocaziile la care ai nevoie!',
              style: TextStyle(fontSize: 14)),
        ),
        // SizedBox(
        //   height: 32,
        // ),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int index) {
              List<Widget> widgets = [];
              if (index == 0) {
                widgets.add(SizedBox(
                  width: 16,
                ));
              }
              widgets.add(cards[index]);
              if (index == 3) {
                widgets.add(SizedBox(
                  width: 16,
                ));
              }
              return Row(
                children: widgets,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 16,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TheOutfitButton('Crează-ți profilul', false, () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => ProfileCreationScreen()),
            );
          }),
        ),
        SizedBox(
          height: 16,
        ),
      ]),
    );
  }
}
