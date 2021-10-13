import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TheOutfitHeader extends StatelessWidget {
  bool hasBack;
  bool hasMenu;
  VoidCallback onMenu;

  TheOutfitHeader(this.hasBack, this.hasMenu, this.onMenu);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (hasBack) IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Container(
            padding: EdgeInsets.only(left: hasBack ? 0 : 8),
            width: 80,
            child: SvgPicture.asset('assets/images/The-Outfit-Logo-black.svg'),
          ),
          hasMenu ? IconButton(
            icon: Icon(Icons.menu, color: Colors.black,),
            onPressed: onMenu,
          ) : IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: null,
          ),
        ],
      ),
    );
  }

}
