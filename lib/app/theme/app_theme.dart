import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: AppColor.primary1,
        appBarTheme: AppBarTheme(
            elevation: 2,
            iconTheme: IconThemeData(color: AppColor.black),
            backgroundColor: AppColor.primary1,
            titleTextStyle: GoogleFonts.raleway(
                color: AppColor.black, fontWeight: FontWeight.w500),
            systemOverlayStyle: SystemUiOverlayStyle.dark
                .copyWith(statusBarColor: AppColor.white)),
        scaffoldBackgroundColor: AppColor.white,
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                textStyle: GoogleFonts.raleway(
                    color: AppColor.primary1,
                    fontWeight: FontWeight.w800,
                    fontSize: 16))),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColor.white,
          elevation: 8,
          selectedItemColor: AppColor.primary1,
          unselectedItemColor: AppColor.secondary1,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          unselectedLabelStyle:
              const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        dividerColor: AppColor.grey,
        iconTheme: IconThemeData(color: AppColor.primary1),
        fontFamily: GoogleFonts.raleway().fontFamily,
        textTheme: ThemeData.light().textTheme,
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: AppColor.primary1),
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          buttonColor: AppColor.primary1,
        ));
  }
}
