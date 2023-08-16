import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model/taskData.dart';
import 'Screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
