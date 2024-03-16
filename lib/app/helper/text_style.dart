import 'package:flutter/material.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/base_font.dart';

abstract class BaseTextStyle {
  /**
   * Primary.
   */
  static const TextStyle primary13w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: BaseColor.primary,
    height: 1.5,
  );
  static const TextStyle primary14w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: BaseColor.primary,
    height: 1.5,
  );
  static const TextStyle primary17w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: BaseColor.primary,
    height: 1.5,
  );

  static const TextStyle primary21w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 21,
    color: BaseColor.primary,
    height: 1.5,
  );

  /**
   * Primary
   *
   * Light.
   */
  static const TextStyle primaryLight15w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: BaseColor.primaryLight,
    height: 1.5,
  );

  static const TextStyle primaryLight16w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: BaseColor.primaryLight,
    height: 1.5,
  );

  static const TextStyle primaryLight19w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 19,
    color: BaseColor.primaryLight,
    height: 1.5,
  );

  /**
   * Secondary
   *
   * Light.
   */
  static const TextStyle secondaryLight16w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: BaseColor.secondary,
    height: 1.5,
  );

  static const TextStyle green17w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: Colors.greenAccent,
    height: 1.5,
  );

  /**
   * Black
   *
   * With Transparency.
   */
  static const TextStyle black50s11w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: BaseColor.textDark50,
    height: 1.5,
  );

  static const TextStyle black50s12w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: BaseColor.textDark50,
    height: 1.5,
  );

  static const TextStyle black50s13w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: BaseColor.textDark50,
    height: 1.5,
  );
  static const TextStyle black60s13w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: BaseColor.textDark60,
    height: 1.5,
  );

  static const TextStyle black80s12w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: BaseColor.textDark80,
    height: 1.5,
  );
  static const TextStyle black80s13w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: BaseColor.textDark80,
    height: 1.5,
  );
  static const TextStyle black38s13w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 13,
    color: Colors.black38,
    height: 1.5,
  );

  static const TextStyle black38s14w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black45,
    height: 1.5,
  );

  static const TextStyle black38s16w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.black45,
    height: 1.5,
  );

  static const TextStyle black50s15w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: BaseColor.textDark50,
    height: 1.5,
  );

  static const TextStyle black50s18w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: BaseColor.textDark50,
    height: 1.5,
  );

  /**
   * Black
   *
   * Without Transparency.
   */
  static const TextStyle blacks10w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks12w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks12w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks12w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks12w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks13w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks13w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks14w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks14w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks14w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks14w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks15w400 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks15w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks15w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks15w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks16w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks16w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks16w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks17w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks17w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks17w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks18w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle blacks18w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks18w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks20w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks20w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.black,
    height: 1.5,
    letterSpacing: -0.20,
  );

  static const TextStyle blacks21w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 21,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks21w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 21,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks23w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 23,
    color: Colors.black,
    height: 1.5,
    letterSpacing: -0.20,
  );

  static const TextStyle blacks23w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 23,
    color: Colors.black,
    height: 1.5,
    letterSpacing: -0.50,
  );

  /**
   * White.
   */
  static const TextStyle whites12w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Colors.white,
    height: 1.5,
  );
  static const TextStyle whites12w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: Colors.white,
    height: 1.5,
  );
  static const TextStyle whites10w700 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 10,
    color: Colors.white,
    height: 1.5,
  );

  static const TextStyle white15w600 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.white,
    height: 1.5,
  );

  static const TextStyle white16w500 = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.white,
  );

  /**
   * TextInput.
   */
  static const TextStyle textInput = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black,
  );
  static const TextStyle textInputDisabled = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: BaseColor.textDark70,
  );

  static const TextStyle textInputPlaceholder = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Color(0xFFCBC3C3),
    letterSpacing: -0.2,
  );

  static const TextStyle textInputLabel = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Color(0xFF736561),
  );

  static const TextStyle textInputHelper = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Colors.black38,
    height: 0.8,
  );

  static const TextStyle textInputValidationError = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: BaseColor.textError,
    height: 1.0,
  );

  /**
   * Pin Input.
   */
  static const TextStyle pinInput = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 21,
    color: BaseColor.textPrimary,
  );

  /**
   * ToolTip.
   */
  static const TextStyle tooltipPrimary = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Colors.black,
    height: 1.6,
  );

  /**
   * HyperLink.
   */
  static const TextStyle hyperLinkPrimary = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: BaseColor.primary,
  );
  static const TextStyle hyperLinkPrimarySemiBold = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: BaseColor.primary,
  );

  /**
   * Button.
   */
  static const TextStyle buttonPrimary = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: BaseColor.textButtonPrimary,
  );
  static const TextStyle buttonDanger = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: BaseColor.textError,
  );

  /**
   * Page.
   */
  static const TextStyle pageTitle = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle pageTextPrimary = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: BaseColor.textPrimary,
  );
  static const TextStyle pageTextDark = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: BaseColor.textDark,
    height: 1.5,
  );

  static const TextStyle pageDescription = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black38,
    height: 1.5,
  );

  /**
   * List.
   */
  static const TextStyle listItemTitle = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: Colors.black,
    height: 1.1,
  );
  static const TextStyle listItemTitleSS = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.black,
  );

  static const TextStyle listItemSubTitle = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black87,
    height: 1.4,
  );

  static const TextStyle listItemDescription = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: BaseColor.textDark45,
    height: 1.3,
  );
  static const TextStyle listItemDescriptionSS = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Colors.black54,
    height: 1.3,
  );

  static const TextStyle listItemDate = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Colors.black54,
    height: 1.5,
  );
  static const TextStyle listItemDateSM = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Colors.black45,
    height: 1.5,
  );

  static const TextStyle listItemStatus = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: BaseColor.textDark,
  );

  /**
   * Card.
   */
  static const TextStyle cardItemTitleSM = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle cardItemTitle = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.black,
  );
  static const TextStyle cardItemDescription = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: Colors.black54,
    height: 1.5,
  );
  static const TextStyle cardItemDate = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: BaseColor.textDark50,
    height: 1.4,
  );
  static const TextStyle cardItemStatus = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: BaseColor.textDark,
    height: 1.5,
  );

  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  /// TextStyle -> Page:
  ///

  static const TextStyle appBarHeader = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: Colors.white,
    letterSpacing: 0,
  );

  static const TextStyle pageTextSLPrimary = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: BaseColor.primary,
    height: 1.4,
  );

  static const TextStyle pageTextGrey = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: BaseColor.textDark50,
    height: 1.5,
  );

  /// SS = Size Small.
  static const TextStyle pageTextSSBoldGrey = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Color(0x66000000),
    height: 1.5,
  );

  /// SL = Size Large.
  static const TextStyle pageTextSLDark = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: BaseColor.textDark,
    height: 1.5,
  );

  /// SL = Size Large.
  static const TextStyle pageDescriptionDark = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: BaseColor.textDark,
    height: 1.5,
  );

  /// Section on mall front page.
  static const TextStyle sectionText = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.grey,
  );

  /**
   * Dialog.
   */
  static const TextStyle dialogTitle = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Colors.white,
    letterSpacing: -0.1,
  );
  static const TextStyle dialogDescription = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Colors.white70,
    letterSpacing: -0.1,
  );
  static const TextStyle dialogContent = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: BaseColor.textDark70,
  );
  static const TextStyle dialogButtonPositive = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.blueAccent,
  );
  static const TextStyle dialogButtonNegative = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: BaseColor.textError,
  );
  static const TextStyle dialogButtonClose = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: BaseColor.textDark,
  );

  /**
   * ActionSheet.
   */
  static const TextStyle actionSheetTitle = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: Colors.black87,
  );
  static const TextStyle actionSheetMessage = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: BaseColor.textDark60,
  );
  static const TextStyle actionSheetAction = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: BaseColor.textDark60,
  );
  static const TextStyle actionSheetActionSelected = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: BaseColor.primary,
  );

  /**
   * Segment Item.
   */
  static const TextStyle segmentInactive = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: BaseColor.segmentTextInactive,
    letterSpacing: -0.20,
    height: 1.25,
  );
  static const TextStyle segmentActive = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: BaseColor.segmentTextActive,
    letterSpacing: -0.20,
    height: 1.25,
  );
  static const TextStyle segmentActiveWhite = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: Colors.white,
    letterSpacing: -0.20,
    height: 1.25,
  );

  /**
   * Chat Item.
   */
  static const TextStyle chatUserName = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle chatMessage = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: BaseColor.textSubTitle,
  );
  static const TextStyle chatUnread = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w800,
    fontSize: 11,
    color: Colors.white,
  );
  static const TextStyle chatOwn = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.white,
    height: 1.5,
  );
  static const TextStyle chatTimeOwn = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0xAFFFFFFF),
    height: 1.5,
  );
  static const TextStyle chatReply = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black,
    height: 1.5,
  );
  static const TextStyle chatReplyOwn = TextStyle(
    fontFamily: BaseFontFamily.primary,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0x80000000),
    height: 1.5,
  );
}
