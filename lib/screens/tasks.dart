import 'package:flutter/material.dart';
import 'package:todo/component/task_list.dart';
import 'package:todo/component/add_task.dart';
import 'package:todo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [Task("go to cinima")];
  late bool isDone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask(),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list, size: 30, color: Colors.blue),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  "Todoye",
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${Provider.of<TaskData>(context).tasks.length} tasks",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
