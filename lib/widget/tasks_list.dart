import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widget/task_tile.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey/_flutter/models/task.dart';

class TasksList extends StatelessWidget {

  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}
class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index)
    {
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback:(checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        }
      );
    },
    itemCount: widget.tasks.length,
    );
  }
}
