import 'package:flutter/material.dart';
import 'package:flutter_getx_masterclass/home_screen.dart';
import 'package:flutter_getx_masterclass/languages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // locale: Locale('bn', 'BD'),
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      // getPages: [
      //   GetPage(name:'/', page: () => HomeScreen()),
      //   GetPage(name:'/screenOne', page: () => ScreenOne()),
      //   GetPage(name:'/screenTwo', page: () {return ScreenTwo();}),
      // ],
    );
  }
}
