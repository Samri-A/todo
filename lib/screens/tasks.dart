import 'package:flutter/material.dart';
import 'package:todo/component/task_list.dart';
import 'package:todo/component/add_task.dart';

class TasksScreen extends StatelessWidget {
  late bool isDone;
  Widget buildButtomSheet(BuildContext context) {
    return AddTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildButtomSheet);
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
                Text("12 tasks", style: TextStyle(color: Colors.white)),
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
