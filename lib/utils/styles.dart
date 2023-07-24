import 'package:ces/utils/app_colors.dart';
import 'package:ces/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// function for the  size
double getSize(double number) {
  double baseWidth = 375; // Assuming the base width for the calculation is 375

  return (number / baseWidth);
}

// function for the size of the usng media query or get.width
double getMediaSize(double number) {
  double baseWidth = 375; // Assuming the base width for the calculation is 375

  return (number / baseWidth) * Get.width;
}

// Fee table column 1
TextStyle col1 = TextStyle(
  color: Color(0xFF777777),
  fontSize: Get.width * getSize(13.62),
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
);

// Fee table column 2
TextStyle col2 = TextStyle(
  color: Color(0xFF3A3A3A),
  fontSize: Get.width * getSize(13.62),
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
// ask doubt input text style
TextStyle askdoubtStyle = TextStyle(
  color: Color(0xFF5D5D5D),
  fontSize: Get.width * getSize(14),
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

/// Input form field style

const TextStyle greyInput = TextStyle(
  color: Color(0xFF949494),
  fontSize: 15,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  letterSpacing: -0.30,
);

/// purple
const TextStyle purpleInput = TextStyle(
  color: Color(0xFF5B58AD),
  fontSize: 16,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

/// yellow
const TextStyle yellowDefalut = TextStyle(
  color: AppColors.primaryButtonColor,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w500,
);

const TextStyle yellowSmall = TextStyle(
  color: AppColors.primaryButtonColor,
  fontSize: AppConstants.fontSmall,
  fontWeight: FontWeight.w500,
);
const TextStyle yellowLarge = TextStyle(
  color: AppColors.primaryButtonColor,
  fontSize: AppConstants.fontLarge,
  fontWeight: FontWeight.w700,
);

///black

const TextStyle blackDefault = TextStyle(
  color: AppColors.blackDarkColor,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w400,
);
const TextStyle blackSmall = TextStyle(
  color: AppColors.blackDarkColor,
  fontSize: AppConstants.fontSmall,
  fontWeight: FontWeight.w400,
);
const TextStyle blackExtraSmall = TextStyle(
  color: AppColors.blackDarkColor,
  fontSize: AppConstants.fontOverSmall,
  fontWeight: FontWeight.w400,
);

const TextStyle blacklarge = TextStyle(
  color: AppColors.blackDarkColor,
  fontSize: AppConstants.fontLarge,
  fontWeight: FontWeight.w500,
);
const TextStyle blackExtralarge = TextStyle(
  color: AppColors.blackDarkColor,
  fontSize: AppConstants.fontExtraLarge,
  fontWeight: FontWeight.w700,
);
const TextStyle blackOverlarge = TextStyle(
  color: AppColors.blackDarkColor,
  fontSize: AppConstants.fontOverLarge,
  fontWeight: FontWeight.w700,
);
const TextStyle blackBoldDefault = TextStyle(
  color: AppColors.blackDarkColor,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w600,
);

///grey

const TextStyle greyDefault = TextStyle(
  color: AppColors.greyLightColor,
  fontSize: AppConstants.fontDefault, // 14
  fontWeight: FontWeight.w500,
);
const TextStyle greyDarkDefault = TextStyle(
  color: AppColors.greyDarkColor,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w500,
);
const TextStyle greyDarksmall = TextStyle(
  color: AppColors.greyDarkColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
const TextStyle greyExtraSmall = TextStyle(
  color: AppColors.greyLightColor,
  fontSize: AppConstants.fontOverSmall,
  fontWeight: FontWeight.w400,
);
const TextStyle greySmall = TextStyle(
  color: AppColors.greyLightColor,
  fontSize: AppConstants.fontSmall,
  fontWeight: FontWeight.w500,
);
const TextStyle greylarge = TextStyle(
  color: AppColors.greyLightColor,
  fontSize: AppConstants.fontLarge,
  fontWeight: FontWeight.w600,
);
const TextStyle greyExtralarge = TextStyle(
  color: AppColors.greyLightColor,
  fontSize: AppConstants.fontExtraLarge,
  fontWeight: FontWeight.w500,
);

///Red
const TextStyle redOverlarge = TextStyle(
  color: AppColors.redColor,
  fontSize: AppConstants.fontOverLarge,
  fontWeight: FontWeight.w500,
);
const TextStyle redDefault = TextStyle(
  color: AppColors.redColor,
  fontSize: AppConstants.fontDefault, // 14
  fontWeight: FontWeight.w500,
);

///White
const TextStyle whiteDefault = TextStyle(
  color: AppColors.whiteColor,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w500,
);
const TextStyle whiteExtraSmall = TextStyle(
  color: AppColors.whiteColor,
  fontSize: AppConstants.fontOverSmall,
  fontWeight: FontWeight.w400,
);
const TextStyle whiteSmall = TextStyle(
  color: AppColors.whiteColor,
  fontSize: AppConstants.fontSmall,
  fontWeight: FontWeight.w500,
);
const TextStyle whitelarge = TextStyle(
  color: AppColors.whiteColor,
  fontSize: AppConstants.fontLarge,
  fontWeight: FontWeight.w600,
);

const TextStyle whiteExtralarge = TextStyle(
  color: AppColors.whiteColor,
  fontSize: AppConstants.fontExtraLarge,
  fontWeight: FontWeight.w700,
);
const TextStyle whiteOverlarge = TextStyle(
  color: AppColors.whiteColor,
  fontSize: AppConstants.fontOverLarge,
  fontWeight: FontWeight.w700,
);

const TextStyle whiteNormal = TextStyle(
  color: Colors.white,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w400,
);

///Brown
const TextStyle brownDefault = TextStyle(
  color: AppColors.brownColor,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w500,
);
const TextStyle brownExtraSmall = TextStyle(
  color: AppColors.brownColor,
  fontSize: AppConstants.fontOverSmall,
  fontWeight: FontWeight.w400,
);
const TextStyle brownSmall = TextStyle(
  color: AppColors.brownColor,
  fontSize: AppConstants.fontSmall,
  fontWeight: FontWeight.w500,
);
const TextStyle brownlarge = TextStyle(
  color: AppColors.brownColor,
  fontSize: AppConstants.fontLarge,
  fontWeight: FontWeight.w600,
);

const TextStyle brownExtralarge = TextStyle(
  color: AppColors.brownColor,
  fontSize: AppConstants.fontExtraLarge,
  fontWeight: FontWeight.w700,
);
const TextStyle brownOverlarge = TextStyle(
  color: AppColors.brownColor,
  fontSize: AppConstants.fontOverLarge,
  fontWeight: FontWeight.w700,
);

/// Grey

const TextStyle redBold = TextStyle(
  color: AppColors.redTomattoBright,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w700,
);
const TextStyle greyBig = TextStyle(
  color: AppColors.blackMediumColor,
  fontSize: AppConstants.fontExtraLarge,
  fontWeight: FontWeight.w500,
);
const TextStyle greyMassive = TextStyle(
  color: AppColors.blackMediumColor,
  fontSize: AppConstants.fontExtreme,
  fontWeight: FontWeight.w500,
);
const TextStyle greyLarge = TextStyle(
  color: AppColors.blackMediumColor,
  fontSize: AppConstants.fontOverLarge,
  fontWeight: FontWeight.w500,
);
const TextStyle greyDefaultBold = TextStyle(
  color: AppColors.greyLightColor,
  fontSize: AppConstants.fontDefault,
  fontWeight: FontWeight.w700,
);

/// Bounce Duration
const Duration bounceduration = Duration(milliseconds: 110);

const EdgeInsets screenPadding = EdgeInsets.fromLTRB(15, 15, 15, 0);
const EdgeInsets screenMargin = EdgeInsets.fromLTRB(15, 15, 15, 10);
const EdgeInsets allPadding = EdgeInsets.all(10);
BorderRadius smallRadius = BorderRadius.circular(5);
