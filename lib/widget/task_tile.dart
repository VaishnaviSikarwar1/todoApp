import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
     value: isChecked,
    onChanged: checkboxCallback,
    ),
    );
  }
}

//(bool checkboxState) {
//setState(() {
//isChecked = checkState;
//});
//};


