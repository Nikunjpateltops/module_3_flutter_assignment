import 'package:flutter/material.dart';
import 'package:module_3_assignment/question_11.dart';
import 'package:module_3_assignment/question_12.dart';

import 'package:module_3_assignment/question_9.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Module 3 Assignment',
        home: MyNavigationDrawer());
  }
}
