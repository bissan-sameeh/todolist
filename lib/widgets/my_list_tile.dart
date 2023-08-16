import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final bool isDone;
  Function(bool?)? functionDone;
  Function()? onLongPress;
  MyListTile(
      {super.key,
      required this.title,
      required this.isDone,
      required this.onLongPress,
      this.functionDone});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onLongPress,
        leading: Text(
          title,
          style:
              TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isDone,
          onChanged: functionDone,
        ));
  }
}
