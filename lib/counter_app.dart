import 'package:counter_app_getx/counter_state_controller.dart';
import 'package:counter_app_getx/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        //primaryColor: Colors.blue,
        //primarySwatch: Colors.blue,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        // elevatedButtonTheme: const ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //     backgroundColor: ,
        //   ),
        // ),
      ),
      home: const HomeScreen(),
      initialBinding: GetxDependencyBinder(),
    );
  }
}


class GetxDependencyBinder extends Bindings{
  ///Get dependency manager
  ///todo - Code against abstraction -> Dependency injection -> Dependency inversion

  @override
  void dependencies() {
    Get.put(CounterStateController());
  }

}

