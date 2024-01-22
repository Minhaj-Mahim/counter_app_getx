import 'package:counter_app_getx/counter_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second_screen.dart';
import 'third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterStateController counterStateController =
  Get.find<CounterStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 500,
        title: const Text(
          'Home',
          style: TextStyle(
            //color: Colors.blue,
            //fontStyle: FontStyle.italic,
            //backgroundColor: Colors.green,
            height: 100,
          ),
        ),
        //centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterStateController>(builder: (controller) {
              return Text(
                controller.count.toString(),
                style: const TextStyle(fontSize: 50),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  Get.to(const SecondScreen());
                },
                child: const Text('Second Screen')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(const ThirdScreen());
                },
                child: const Text('Third Screen')
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterStateController.updateValue(1);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
