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
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('en', 'US'));
                    },
                    child: Text('English')),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('bn', 'BD'));
                    },
                    child: Text('Bangla'))
              ],
            )
          ],
        ));
  }
}
