import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:clothing_app/common/the_outfit_menu.dart';

class TheOutfitWrapper extends StatefulWidget {
  bool hasBack;
  bool hasMenu;
  bool isList;
  Widget child;

  TheOutfitWrapper(
      {required this.hasBack,
      required this.hasMenu,
      required this.isList,
      required this.child});

  @override
  State<TheOutfitWrapper> createState() => _TheOutfitWrapperState();
}

class _TheOutfitWrapperState extends State<TheOutfitWrapper>
    with SingleTickerProviderStateMixin {
  bool showMenu = false;

  AnimationController? _iconController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _iconController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
  }

  @override
  void dispose() {
    _iconController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget header = getHeader(widget.hasBack, widget.hasMenu, showMenu, () {
      showMenu ? _iconController!.reverse() : _iconController!.forward();
      setState(() {
        showMenu = !showMenu;
      });
    });

    return SafeArea(
      child: Scaffold(
        body: widget.isList && !showMenu
            ? ListView(
                children: [
                  header,
                  widget.child,
                ],
              )
            : ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        header,
                        Expanded(
                            child: showMenu
                                ? TheOutfitMenu(
                                    hasBack: widget.hasBack,
                                    onNavigation: () async {
                                      if (showMenu) {
                                        await _iconController!.reverse();
                                        setState(() {
                                          showMenu = false;
                                        });
                                      }
                                    },
                                  )
                                : widget.child),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget getHeader(hasBack, hasMenu, showMenu, onMenu) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (hasBack)
            IconButton(
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
          hasMenu
              ? IconButton(
                  icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: _iconController!,
                    semanticLabel: 'Show menu',
                  ),
                  onPressed: onMenu,
                )
              : IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
        ],
      ),
    );
  }
}
