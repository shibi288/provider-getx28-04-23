import 'package:flutter/material.dart';
import 'package:loginpageflutter/providercounter/counterpage-consumer.dart';
import 'package:provider/provider.dart';

import 'counter provider chane notifier.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CounterProvider(),

    child: MaterialApp(
      home: CounterPage(),
    ),);
  }
}
