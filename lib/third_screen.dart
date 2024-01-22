import 'package:counter_app_getx/home_screen.dart';
import 'package:counter_app_getx/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.offAll(const HomeScreen());
              },
              child: const Text('Go to home'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(const SecondScreen());
              },
              child: const Text('Go to second screen'),
            ),
          ],
        ),
      ),
    );
  }
}
