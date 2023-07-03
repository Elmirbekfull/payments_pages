


import 'package:flutter/material.dart';
import 'package:oitv_flutter/main_pages/logo_widget.dart';
import 'package:oitv_flutter/main_pages/oi_home/oi_widget.dart';
import 'package:oitv_flutter/main_pages/register_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 32, 31, 31),
        )
      ),
      debugShowCheckedModeBanner: false,
       initialRoute: '/',
       routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const LogoWidget(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => const RegisterWidget(),
    '/third': (context) => const OMainWidget(),
    },
    );
  }
}