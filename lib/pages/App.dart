import 'package:flutter/material.dart';
import 'hello_demo.dart';
import 'Appbar_demo.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext conntext) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Development',
      home: AppbarDemo(),
    );
  }
}


