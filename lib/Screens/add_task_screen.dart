import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/taskData.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController textController = TextEditingController();
  String task = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          textAlign: TextAlign.center,
          "Add Task",
          style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        TextField(
          controller: textController,
          autofocus: true,
          onChanged: (value) {
            task = value;
          },
        ),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).addTask(task);
            setState(() {
              Navigator.pop(context);
              textController.clear();
            });
          },
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
          child: const Text("ADD"),
        )
      ],
    );
  }
}
