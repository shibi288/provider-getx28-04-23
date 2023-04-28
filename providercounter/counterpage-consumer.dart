import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter provider chane notifier.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  @override
  Widget build(BuildContext context) {
    final counterobject=Provider.of<CounterProvider>(context);

final countervalue=counterobject.count;

    return SafeArea(
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
                child: Text("${countervalue}"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
counterobject.incrementMethod();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
