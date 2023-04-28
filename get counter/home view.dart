import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpageflutter/get%20counter/home%20controller.dart';
class CounterGet extends StatefulWidget {
  const CounterGet({Key? key}) : super(key: key);

  @override
  State<CounterGet> createState() => _CounterGetState();
}

class _CounterGetState extends State<CounterGet> {

  HomeController controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You have pushed the button this many time"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(()=>Text("${controller.count}")),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            controller.increment();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
