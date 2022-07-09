import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_app_bootcamp/widget/task_list.dart';
import '../controller/controller_satete.dart';
import 'add_task_screen.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder:(ctx)=>AddTaskScreen(
              addTaskCallBack: (newTaskTitle){
                   Provider.of<TasksController>(context,listen: false).changeState(newTaskTitle);
                },
            ),
          );
        }
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60.0,left:30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                   const CircleAvatar(child: Icon(Icons.list,size: 40,),backgroundColor: Colors.white,radius: 30,),
                   const SizedBox(height: 20),
                   const Text('To Do List',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 50),),
                   Text(
                    '${Provider.of<TasksController>(context).gettaskCount} Tasks',
                     style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 18),
                    ),
                
                  
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
                child: Container(
                  child:TasksList(tasks:Provider.of<TasksController>(context).tasks),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(20),
                      topRight: Radius.circular(20)
                    )
                    ),
                    
                  ),
              )
        
        ],
      ),
    );
  }
}
