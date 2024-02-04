import 'package:flutter/material.dart';

enum Screen { mobile, tablet, desktop }

Screen detectScreen(BuildContext context) {
  var size = MediaQuery.of(context).size;
  if (size.width < 600) {
    return Screen.mobile;
  } else if (size.width < 840) {
    return Screen.tablet;
  } else {
    return Screen.desktop;
  }
}
