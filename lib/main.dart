import 'package:flutter/material.dart';
import 'package:revision_24_chapter/Utils/MyRoutes.dart';
import 'package:revision_24_chapter/pages/HomePage.dart';
import 'package:revision_24_chapter/pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: MyRoute.loginRoute,
      routes: {
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
