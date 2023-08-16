import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/Helpers/bottom_shet_model.dart';
import 'package:todolist/Model/taskData.dart';

import '../widgets/my_list_view.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with showBotttomModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheetFun(context);
          },
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 54,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 54,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text("Todeay",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold)),
                  Text("${Provider.of<TaskData>(context).taskCount} Tasks",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12)),
                  ),
                  child: const myListView()),
            )
          ]),
        ));
  }
}
