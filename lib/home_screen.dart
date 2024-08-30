import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GetX Masterclass'),
        ),
        body: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.3,
              height:Get.height * 0.3,
              width: Get.width * 0.2,
              color: Colors.red,
              child: Center(
                child: Text(
                    'Hello'
                ),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 0.3,
              height:Get.height * 0.2,
              width: Get.width * 0.2,
              color: Colors.green,
              child: Center(
                child: Text(
                    'Hi'
                ),
              ),
            ),
          ],
        ));
  }
}
