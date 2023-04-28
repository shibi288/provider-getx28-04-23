import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpageflutter/get%20counter/home%20view.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterGet(),
    );
  }
}
