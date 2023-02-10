import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFFC200);
const kTextColor = Color(0xFFFFC200);
const kPadding =30.0;
const kHeaderHeight = 100.0;

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color bottomBarBackground = hexToColor('#FDD0D1');
  static Color bottomBarItemPrimary = hexToColor('#F76E11');
  static Color bottomBarItemSecondary = hexToColor('#767676');
  static Color bottomBarTripBackground = hexToColor('#2C2929');
  static Color borderColor1 = hexToColor('#DEE3EB');
  static Color textColor1 = hexToColor('#747474');
  static Color secondaryDarkAppColor = Colors.white;
}
