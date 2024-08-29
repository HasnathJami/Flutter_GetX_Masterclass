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
        children: [],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
            "Message",
            "Welcome to GetX Masterclass",
        backgroundColor: Colors.blue,
        snackPosition: SnackPosition.BOTTOM,
          icon: Icon(Icons.notifications),
          mainButton: TextButton(onPressed: (){}, child: Text('click')),
          // onTap: (snap){}
        );
      }),
    );
  }
}
