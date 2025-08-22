import 'package:flutter/material.dart';
import 'package:todo/component/task_tile.dart';
import 'package:todo/models/task.dart';

class TaskList extends StatefulWidget {
  TaskList({super.key});
  @override
  State<StatefulWidget> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [Task("Buy milk"), Task("Study Maths"), Task("work work")];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index].name, tasks[index].isDone, (
          checkboxstate,
        ) {
          setState(() {
            tasks[index].toggleDone();
          });
        });
      },
      itemCount: tasks.length,
    );
  }
}
