import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task("go to cinima")];
  int get taskcount {
    return tasks.length;
  }

  void change(String value) {
    final task = Task(value);
    tasks.add(task);
    notifyListeners();
  }
}
