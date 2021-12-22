import 'package:flutter/material.dart';
import 'package:todo_app/todo_home_view.dart';

void main() {
  runApp(MaterialApp(
    home: TodoHomeView(),
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xfff0f4fc),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color(0xff5f6d95)),
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Color(0xff5f6d95), fontSize: 34)),
    ),
    darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme:  AppBarTheme(
          iconTheme: IconThemeData(color: Color(0xffffffff)),
          elevation: 0,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Color(0xffffffff), fontSize: 34)),
    ),
    themeMode: ThemeMode.system,
  ));
}
