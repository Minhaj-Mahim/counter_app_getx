import 'package:counter_app_getx/home_screen.dart';
import 'package:counter_app_getx/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                ///Go to next screen but remove all previous screens
                Get.offAll(const HomeScreen());
              },
              child: const Text('Go to home'),
            ),
            ElevatedButton(
              onPressed: (){
                ///Go to next screen but replace the current one
                Get.off(const ThirdScreen());
              },
              child: const Text('Go to third screen'),
            ),
            ElevatedButton(
              onPressed: (){
                ///Back to previous screen
                Get.back();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
