import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:clothing_app/common/the_outfit_header.dart';
import 'package:clothing_app/common/the_outfit_wrapper.dart';
import 'package:clothing_app/utils/constants.dart';

class ProfileCreationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await FlutterWebviewPlugin().close();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body:Column(
              children: [
                TheOutfitHeader(true, false, () => {}),
                Expanded(
                  child: WebviewScaffold(
                    withZoom: true,
                    resizeToAvoidBottomInset: true,

                    url:
                    'https://form.typeform.com/to/yla5lDt0?typeform-medium=embed-sdk&typeform-embed=embed-widget&typeform-source=theoutfit.ro&embed-opacity=0&typeform-embed-id=msji4',
                  ),
                ),
              ]
          )
        ),
      ),
    );
  }
}
