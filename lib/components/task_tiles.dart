import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
  String? taskTitle;
  bool isChecked;
  final Function checkboxCallback;
  final Function()? longPress;

  TaskTiles({
    required this.isChecked,
    required this.checkboxCallback,
    this.taskTitle,
    required this.longPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        ' $taskTitle',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blue,
        value: isChecked,
        onChanged: checkboxCallback as void Function(bool?)?,
      ),
      onLongPress: longPress,
    );
  }
}
