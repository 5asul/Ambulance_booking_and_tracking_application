import 'package:flutter/material.dart';
final Color primary = Color(0xFFFF3F3F);
final Color background = Color(0xFFFFFFFF);
final Color frame = Color(0xFFEBEAEA);
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    fontFamily: 'Inter',
    appBarTheme: appBarTheme()
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Color(0xFFFFFFFF),
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0xFFFF3F3F)),
    titleTextStyle: TextStyle(color: Color(0xFFF5F5F5), fontSize: 18),
  );
}