import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Model/taskData.dart';
import '../Model/tasks.dart';
import 'my_list_tile.dart';

class myListView extends StatelessWidget {
  const myListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.separated(
            padding: const EdgeInsets.only(left: 12, top: 16),
            itemBuilder: (context, index) {
              return MyListTile(
                title: taskData.tasks[index].title,
                isDone: taskData.tasks[index].isDone,
                functionDone: (value) {
                  taskData.toggleDoneTaskManager(index);
                },
                onLongPress: () {
                  Provider.of<TaskData>(context, listen: false)
                      .removeTask(index);
                },
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 12,
              );
            },
            itemCount: Provider.of<TaskData>(context).taskCount);
      },
    );
  }
}
