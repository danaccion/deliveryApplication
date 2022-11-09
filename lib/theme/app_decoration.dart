import 'package:flutter/material.dart';
import 'package:dan_s_application3/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray10051 => BoxDecoration(
        color: ColorConstant.bluegray10051,
      );
  static BoxDecoration get fillBluegray103 => BoxDecoration(
        color: ColorConstant.bluegray103,
      );
  static BoxDecoration get fillBluegray1008c => BoxDecoration(
        color: ColorConstant.bluegray1008c,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.bluegray10056,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray1004c => BoxDecoration(
        color: ColorConstant.bluegray1004c,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50.00,
    ),
  );
}
