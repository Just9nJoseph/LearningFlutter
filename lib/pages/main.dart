import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login.dart';
import 'package:flutter_catalog/pages/project_name.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        //so this like a property of ThemeMode.data
        brightness: Brightness
            .dark, //this property will be used when the themeMode is set to dark
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // "/": (context) => HomePage(), //any one can be used either this or home: HomePage()
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.projectRoute: (context) => ProjectName(),
      },
    );
  }
}
