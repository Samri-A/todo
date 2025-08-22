import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(this.tasktitle, this.ischecked, this.callbackstate);
  final String tasktitle;
  final ValueChanged<bool?>? callbackstate;
  final bool ischecked;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: callbackstate,
      ),
    );
  }
}
