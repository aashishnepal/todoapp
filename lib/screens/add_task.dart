import 'dart:io';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';
import 'task_screen.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  String? taskText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (newText) {
                print('beforechange');
                taskText = newText;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {

                Provider.of<TaskData>(context, listen: false)
                    .changeString(taskText!);

                Navigator.pop(context);

              },
              child: Text('Add',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
