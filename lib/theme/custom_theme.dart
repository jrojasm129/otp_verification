

import 'package:flutter/material.dart';
import '../constants.dart';

final ThemeData customThemeData = ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: primaryColor,
          ),
          inputDecorationTheme: const InputDecorationTheme().copyWith(
              iconColor: Colors.white.withOpacity(0.5),
              fillColor: primaryColor,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 20),
              
              focusedBorder: _outlineInputBorder(focused: true),
              border: _outlineInputBorder(),
              enabledBorder: _outlineInputBorder(),
              errorBorder: _outlineInputBorder()
          )
);

  OutlineInputBorder _outlineInputBorder({bool focused = false}) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: focused ? primaryColor.withOpacity(0.8) : Colors.grey.withOpacity(0.5),
            width: focused ? 2 : 1
          )
      );
  }

