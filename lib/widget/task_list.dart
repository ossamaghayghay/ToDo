import 'package:flutter/material.dart';

import '../models/tasks.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({ Key? key}) : super(key: key);
  

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Tasks> taskList = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                        
                   itemBuilder: (context,index)
                   {
                    return ExctractTaskTile(
                    checkValue:taskList[index].isDone!,
                    title:taskList[index].taskName!,
                    checkboxCallback:(bool checkboxState)
                    {
                      setState(() {
                        taskList[index].toggoleDone();
                      });
                    }
                    );
                   },
                   itemCount: taskList.length,
                  );
  }
}