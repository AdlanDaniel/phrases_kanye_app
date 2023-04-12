import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phrases_kanye_west/binding/initial_binding/initial_binding.dart';
import 'package:phrases_kanye_west/features/home/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      home: const HomePage(),
    );
  }
}
