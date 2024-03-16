import 'package:flutter/material.dart';

class BaseColor {
  /**
   * This class is not meant to be instantiated or extended; this constructor
   * prevents instantiation and extension.
   */
  BaseColor._();

  /**
   * Generic, Primary.
   */
  static const primary = Color(0xFFADF6B1);
  static const primaryLight = Color(0xFFFF7D7D);
  static const primaryLighter = Color(0xFFFF9A9A);

  static const primarySuccess = Color(0xFF6CFF64);
  static const primaryError = Color(0xFFFF6464);

  static const secondary = Color(0xFF005B80);

  static const pageBackground = Color(0xFFEEEEEE);

  static const textInputBackground = Color(0xFFF0F5FD);

  /**
   * Shadow.
   */
  static const Color shadow = Color.fromRGBO(79, 125, 150, 0.24);

  static const Color shadowPrimary40 = Color(0x66A52B2A);
  static const Color shadowPrimary30 = Color(0x4DA52B2A);
  static const Color shadowPrimary25 = Color(0x40A52B2A);
  static const Color shadowPrimary20 = Color(0x33A52B2A);
  static const Color shadowPrimary15 = Color(0x26A52B2A);
  static const Color shadowPrimary10 = Color(0x1AA52B2A);
  static const Color shadowPrimary5 = Color(0x0DA52B2A);
  static const Color shadowPrimaryLight30 = Color(0x4DFF7D7D);
  static const Color shadowPrimaryLight15 = Color(0x26FF9A9A);

  static const Color shadowDark = Color(0xFF9E9E9E);
  static const Color shadowDark75 = Color(0xBF9E9E9E);
  static const Color shadowDark50 = Color(0x809E9E9E);
  static const Color shadowDark40 = Color(0x669E9E9E);
  static const Color shadowDark25 = Color(0x409E9E9E);
  static const Color shadowDark20 = Color(0x339E9E9E);
  static const Color shadowDark15 = Color(0x269E9E9E);
  static const Color shadowDark10 = Color(0x1A9E9E9E);
  static const Color shadowDark5 = Color(0x0D9E9E9E);

  /**
   * Text.
   */
  static const Color textDark = Color(0xF5000000);
  static const Color textDark90 = Color(0xE6000000);
  static const Color textDark80 = Color(0xCC000000);
  static const Color textDark70 = Color(0xB3000000);
  static const Color textDark60 = Color(0x99000000);
  static const Color textDark50 = Color(0x80000000);
  static const Color textDark45 = Color(0x73000000);
  static const Color textDark40 = Color(0x66000000);
  static const Color textDark30 = Color(0x4D000000);
  static const Color textDark20 = Color(0x33000000);
  static const Color textDark10 = Color(0x1A000000);
  static const Color textDark5 = Color(0x0D000000);

  static const Color textPrimary = Color(0xFF582B39);
  static const Color textButtonPrimary = Color(0xF5FFFFFF);
  static const Color textError = Color(0xFFB70095);
  static const Color textSubTitle = Color(0x99000000);

  /**
   * TextInput.
   */
  static const Color textInputBorder = Color(0xF5D8DBE1);

  /**
   * Divider.
   */
  static const Color dividerDark = Color(0xFFF3F3F3);
  static const Color dividerDark2 = Color(0xFFEBEBEB);

  /**
   * Button.
   *
   * Index 0 and 1 for gradient color, Index 2 is for shadow color.
   */
  static const List<Color> buttonPrimary = [
    Color(0xFFA52B2A),
    Color(0xFFA52B2A),
    Color(0x66A52B2A)
  ];
  static const List<Color> buttonPrimaryDisabled = [
    Color(0xFFA52B2A),
    Color(0xFFA52B2A),
    Color(0x66A52B2A)
  ];

  static const List<Color> buttonTransparent = [
    Color(0x00000000),
    Color(0x00000000),
    BaseColor.shadow
  ];

  /**
   * Social Icon.
   *
   * Index 0 and 1 for gradient color, Index 2 is for shadow color.
   */
  static const List<Color> buttonFacebook = [
    Color(0xFF1877F2),
    Color(0xFF1877F2),
    Color(0xFF1877F2)
  ];
  static const List<Color> buttonGoogle = [
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF)
  ];
  static const List<Color> buttonApple = [
    Color(0xFF000000),
    Color(0xFF000000),
    Color(0xFF000000)
  ];

  /**
   * Border.
   */
  static const Color borderButtonDanger = Color(0x33200E32);

  /**
   * Segment Tab.
   */
  static const Color segmentBackground = Color(0xFFFFFFFF);
  static const Color segmentTextActive = Color(0xFFFFFFFF);
  static const Color segmentTextInactive = Color(0xFF000000);

  static const List<Color> threeElementGray = [
    Color(0xFFD7D7D7),
    Color(0x262D2D2D),
    Color(0xFFCFCFCF),
    Color(0x262D2D2D),
    Color(0xFF2D2D2D),
    Color(0xB3000000),
  ];

  static const List<Color> threeElementWhite = [
    Color(0xFFFFFFFF),
    Color(0x262D2D2D),
    Color(0xFFCFCFCF),
    Color(0x262D2D2D),
    Color(0xFF2D2D2D),
    Color(0xB3000000),
  ];
  static const List<Color> threeElementGreen = [
    Color(0xFFE2FBD7),
    Color(0x3634B53A),
    Color(0xFFDEFFD7),
    Color(0x2634B53A),
    Color(0xFF34B53A),
    Color(0xB3000000),
  ];
  static const List<Color> threeElementYellow = [
    Color(0xFFFFEBCC),
    Color(0x67FFB200),
    Color(0xFFFFEBBD),
    Color(0x26FFB200),
    Color(0xFFFF9400),
    Color(0xB3000000),
  ];
}
