
import 'package:flutter/foundation.dart';

import '../models/tasks.dart';

class TasksController extends ChangeNotifier{

   List<Tasks> tasks=[];
 

  


   
  /*::::::::::::::::::::::Add Task:::::::::::::::::::*/
  void changeState(dynamic newTaskTitle)
  {
    tasks.add(Tasks(taskName: newTaskTitle));
    notifyListeners();
  }
  /*:::::We creater a Getter to o get _asks*/
  List<Tasks> get gettasks{
    return tasks;
  }
  /*:::::We creater a Getter to o get taskCount*/
  int get gettaskCount{
   return tasks.length; 
  }
 /*::::::::::::::::::::Update CheckBox:::::::::::::::::*/
void updatecheckBox(Tasks task)
{
 task.toggoleDone();
 notifyListeners();
}                   
/*::::::::::::::::::::Delete CheckBox:::::::::::::::::*/
 void deleteTask(Tasks task)
{
  tasks.removeLast();
  notifyListeners();
  // tasks.remove(task);
}   


}
// class ContollerState extends