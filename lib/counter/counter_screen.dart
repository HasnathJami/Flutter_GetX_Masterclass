import 'package:flutter/material.dart';
import 'package:flutter_getx_masterclass/counter/counter_controller.dart';
import 'package:get/get.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Container(
        child: Obx(() {
          print('rebuild');
          return Text(controller.counter.value.toString());
        }),
        // child: Obx(() => Text(controller.counter.value.toString())),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementCounter();
      }),
    );
  }
}
