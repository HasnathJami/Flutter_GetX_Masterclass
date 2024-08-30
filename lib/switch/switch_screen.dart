import 'package:flutter/material.dart';
import 'package:flutter_getx_masterclass/switch/switch_controller.dart';
import 'package:get/get.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<SwitchScreen> {
  SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch App'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notification:"),
              Obx(
                () => Switch(
                    value: controller.getSwitchValue(),
                    onChanged: (value) {
                      controller.setSwitchValue(value);
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
