// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/components/task_lists.dart';
import 'package:todoey/models/taskData.dart';
import 'add_task.dart';
import 'package:provider/provider.dart';

// AddTask addTask = AddTask(getTask: );

class TaskScreen extends StatelessWidget {
//   const TaskScreen({Key? key}) : super(key: key);

//   @override
//   State<TaskScreen> createState() => _TaskScreenState();
// }

// class _TaskScreenState extends State<TaskScreen> {
  // void finalAdd() {
  //   setState(() {
  //     // var finaltask = addTask.getTaskdata();
  //     // tasks.add(Task(isDone: false, name: addTask.taskText));
  //     tasks[0].toggleDone();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTask(
                      
                        // setState(() {
                        //   Provider.of<TaskData>(context)
                        //       .tasks
                        //       .add(Task(isDone: false, name: taskText));
                        // });
                                      )                      ),
              ),
            ),
          );
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30, top: 60, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    CupertinoIcons.list_bullet,
                    size: 30,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} tasks',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Tasklists(),
        )),
      ]),
    );
  }
}
