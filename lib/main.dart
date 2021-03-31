import 'package:flutter/material.dart';
import 'package:teacher_app/ui/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
          color: Color(0xefF1F5FB)
        )
      ),
      home: Welcome(),
    );
  }
}
