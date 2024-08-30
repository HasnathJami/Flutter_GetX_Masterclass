import 'package:flutter/material.dart';
import 'package:flutter_getx_masterclass/favorite/favorite_controller.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  FavoriteController controller = Get.put(FavoriteController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite App'),
      ),
      body: ListView.builder(
          itemCount: controller.sports.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  controller.selectedSports.contains(controller.sports[index])
                      ? controller.removeFromFavorites(controller.sports[index])
                      : controller.addToFavorites(controller.sports[index]);

                  // setState(() {});
                },
                title: Text(controller.sports[index]),
                trailing: Obx(() => Icon(
                      Icons.favorite,
                      color: controller.selectedSports
                              .contains(controller.sports[index])
                          ? Colors.red
                          : Colors.white,
                    )),
              ),
            );
          }),
    );
  }
}
