import 'package:flutter/material.dart';
import 'package:flutter_getx_masterclass/opacity/opacity_controller.dart';
import 'package:get/get.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  State<OpacityScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<OpacityScreen> {
  OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity App'),
      ),
      // body: Obx((){
      //   return Column(
      //     children: [
      //       Container(
      //         height: 200,
      //         width: 200,
      //         color: Colors.red.withOpacity(controller.getOpacity()),
      //       ),
      //       Slider(value:  controller.getOpacity(), onChanged: (value) {
      //         print(value);
      //         controller.setOpacity(value);
      //         // opacity = value;
      //         // setState(() {});
      //       })
      //     ],
      //   );
      // }),
      body: Column(
        children: [
          Obx(() => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller.getOpacity()),
              )),
          Obx(() => Slider(
              value: controller.getOpacity(),
              onChanged: (value) {
                print(value);
                controller.setOpacity(value);
                // opacity = value;
                // setState(() {});
              })),
        ],
      ),
    );
  }
}
