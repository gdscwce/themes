import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themes/pages/page1.dart';
import 'package:themes/pages/page2.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.greenAccent,
        // ),
        // // brightness: isBright ? Brightness.light:Brightness.dark,
        // iconTheme: const IconThemeData(
        //   color: Colors.redAccent,
        //   size: 40
        // ),
        textTheme: GoogleFonts.josefinSansTextTheme(
        Theme.of(context).textTheme,),
        primarySwatch: Colors.orange,
        // primaryColor: Colors.cyan,
      ),
      initialRoute: '/',
      routes:{
        '/':(context) => const Page1(),
       '/second': (context) => const Page2(),

      },

    );


  }
}

