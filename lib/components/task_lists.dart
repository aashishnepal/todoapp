import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';
import 'package:todoey/components/task_tiles.dart';

class Tasklists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTiles(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (bool? checkBoxState) {
              taskData.updateTask(task);
            },
            longPress: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: Provider.of<TaskData>(context).tasks.length,
      );
    });
  }
}
