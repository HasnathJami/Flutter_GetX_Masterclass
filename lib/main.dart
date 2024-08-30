import 'package:flutter/material.dart';
import 'package:flutter_getx_masterclass/image_picker/image_picker_screen.dart';
import 'package:flutter_getx_masterclass/login/login_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // translations: Languages(),
      // locale: Locale('en', 'US'),
      // fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      // getPages: [
      //   GetPage(name:'/', page: () => HomeScreen()),
      //   GetPage(name:'/screenOne', page: () => ScreenOne()),
      //   GetPage(name:'/screenTwo', page: () {return ScreenTwo();}),
      // ],
    );
  }
}
