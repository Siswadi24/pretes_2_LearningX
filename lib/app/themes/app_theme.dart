import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_font.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: bgAppColor,
        primaryColor: primaryColor,
        // ==== TEXT THEME ====
        textTheme: TextTheme(
            headlineLarge: text18, bodyLarge: text18, bodyMedium: text14),

        // ==== ICON THEME ====
        iconTheme: const IconThemeData(color: Colors.black, size: 28),

        // ==== FLOATING BUTTON THEME ====
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            shape: CircleBorder(), backgroundColor: primaryColor),

        // ==== ELEVATED BUTTON THEME ====
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                splashFactory: InkRipple.splashFactory,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
                foregroundColor: Colors.black45,
                elevation: 0.0,
                shadowColor: Colors.transparent,
                textStyle: text16.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w600),
                backgroundColor: primaryColor)),
        shadowColor: shadowColor,
        splashFactory: InkRipple.splashFactory,
        highlightColor: const Color.fromARGB(88, 0, 0, 0),
        splashColor: const Color.fromARGB(88, 0, 0, 0),

        // ==== TEXT SELECTION THEME ====
        textSelectionTheme: const TextSelectionThemeData(
            cursorColor: primaryColor,
            selectionColor: Colors.grey,
            selectionHandleColor: primaryColor),

        // ==== INPUT DECORATOIN THEME ====
        inputDecorationTheme: InputDecorationTheme(
            counterStyle: text10,
            filled: true,
            fillColor: Colors.white,
            helperStyle: text10.copyWith(
                color: Colors.red, overflow: TextOverflow.visible),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    const BorderSide(width: 0.5, color: Colors.redAccent)),
            errorStyle: text10.copyWith(
                color: Colors.redAccent, overflow: TextOverflow.visible),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    const BorderSide(width: 0.5, color: Colors.redAccent)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(width: 0.5, color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(width: 1, color: primaryColor)),
            hintStyle: text14.copyWith(
                color: const Color(0xFFB7BDC4), fontWeight: FontWeight.w400)),
      );
}
