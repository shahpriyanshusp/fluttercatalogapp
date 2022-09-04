import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/Login.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(brightness:Brightness.dark ),
      // home: HomePage(),
      // initialRoute: "/home",
      routes: {
        "/":(_)=>Login_page(),
        // "/loginpage":(_)=>Login_page(),
        MyRoutes.loginRoute:(_)=>Login_page(),
        MyRoutes.homeRoute:(_)=>HomePage()
      },
    );
  }
}

