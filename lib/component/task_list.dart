import 'package:flutter/material.dart';
import 'package:todo/component/task_tile.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskData.tasks[index].name,
              taskData.tasks[index].isDone,
              (checkboxstate) {
                setState(() {
                  taskData.tasks[index].toggleDone();
                });
              },
            );
          },
          itemCount: taskData.taskcount,
        );
      },
    );
  }
}
