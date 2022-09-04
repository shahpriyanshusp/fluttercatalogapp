import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/Login.dart';
import 'package:flutter_catalog/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness:Brightness.dark ),
      // home: HomePage(),
      initialRoute: "/home",
      routes: {
        "/":(_)=>Login_page(),
        "/loginpage":(_)=>Login_page(),
        "/home":(_)=>HomePage()
      },
    );
  }
}

