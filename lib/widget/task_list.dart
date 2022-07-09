import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_app_bootcamp/controller/controller_satete.dart';

import '../models/tasks.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
   TasksList({ Key? key,required this.tasks}) : super(key: key);
  
     List<Tasks> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksController>(
      builder: (
        (context, taskcontroller, child) => ListView.builder(
                     itemBuilder: (context,index)
                     {
                      return ExctractTaskTile(
                       checkValue:taskcontroller.tasks[index].isDone!,
                       title:taskcontroller.tasks[index].taskName!,
                       checkboxCallback:(bool checkboxState)
                      {
                        taskcontroller.updatecheckBox(taskcontroller.tasks[index]);
                      }
                      );
                     },
                     itemCount:taskcontroller.gettaskCount,
                    )
      ),
    );
  }
}