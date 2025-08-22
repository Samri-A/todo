import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTask extends StatefulWidget {
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  late String task_;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                " Add Task",
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              SizedBox(height: 30),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newtext) {
                  task_ = newtext;
                },
              ),
              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context).change(task_);
                  Navigator.pop(context);
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
