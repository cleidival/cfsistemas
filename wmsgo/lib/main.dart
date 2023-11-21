import 'package:flutter/material.dart';
import 'package:wmsgo/pages/HomePage.dart';

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
        title: 'WmsGo',
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff171a37)),
          scaffoldBackgroundColor: const Color(0xFF171a37),
          primaryColor: Colors.white,
          
          useMaterial3: true,
        ),
        home: HomePage());
  }
}
