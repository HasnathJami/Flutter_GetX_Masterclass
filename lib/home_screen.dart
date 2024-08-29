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
          Card(
            child: ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text('Getx dialog alert with getX'),
              onTap: (){
                Get.defaultDialog(
                  title: "Delete chat",
                  titlePadding: EdgeInsets.only(top: 20),
                  // middleText: 'Are you sure you want to delete?',
                    content: Column(
                      children: [
                        Text('Are you sure you want to delete?'),
                        Text('Please let us know')
                      ],
                    ),
                  contentPadding: EdgeInsets.all(20),
                  // textConfirm: 'Yes',
                  // textCancel: 'No',
                  confirm: TextButton(
                    onPressed: () {
                    },
                    child: Text('Ok'),
                  ),
                  cancel: TextButton(
                    onPressed: (){
                      // Navigator.pop(context);
                       Get.back();
                    },
                    child: Text("Cancel"),
                  ),
                  barrierDismissible: false
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Bottom Sheet Dialog'),
              subtitle: Text('Getx bottom sheet dialog with getX'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          )
        ],
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
