import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlineschool/app/data/colors.dart';

ThemeData mainTheme = ThemeData(
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    textTheme: GoogleFonts.poppinsTextTheme(),
    primaryColor: CustomColor.kPrimary,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: CustomColor.kLightBackground,
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: CustomColor.kPrimary,
        selectionColor: CustomColor.kPrimary),
    buttonTheme: ButtonThemeData(buttonColor: CustomColor.kPrimary),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: CustomColor.kDarkBblue),
      color: CustomColor.kBackground,
    ));

SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Colors.black,
    systemNavigationBarColor: Colors.black);
