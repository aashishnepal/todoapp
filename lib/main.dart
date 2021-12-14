// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';
import 'package:todoey/screens/task_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
        create: (context) => TaskData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TaskScreen(),
        ));
  }
}
