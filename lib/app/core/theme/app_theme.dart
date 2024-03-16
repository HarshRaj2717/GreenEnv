import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTheme {
  ThemeData get lightTheme {
    return ThemeData(
        iconTheme: IconThemeData(color: Color(0xFF2f2f2f)),
        shadowColor: Colors.blueGrey,
        primaryColorDark: Color(0xFFA7D3A6),
        primaryColor: const Color(0xFFADF6B1));
  }

  /// for getting dark theme
  ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Color(0xFF6a41b4),
    );
  }
}

/// for providing app theme [AppTheme]
final appThemeProvider = Provider<AppTheme>((_) => AppTheme());
