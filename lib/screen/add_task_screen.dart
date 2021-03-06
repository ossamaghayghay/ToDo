
import 'package:flutter/material.dart';
import 'package:to_app_bootcamp/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
   AddTaskScreen({Key? key,required this.addTaskCallBack}) : super(key: key);
   
   final Function addTaskCallBack;

   String? taskMessage;
   
  @override
  Widget build(BuildContext context) {


    return Container(
      color: const Color.fromRGBO(117, 117, 117, 0.5),
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
             const Text(
               'Add Task',
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w700,
                 color: Colors.lightBlueAccent
                 ),
                 textAlign: TextAlign.center,
                 ),
               TextField(
                onChanged: (newText){
                  taskMessage = newText;
                },
                decoration: const InputDecoration(
                  filled: true,
                ),
                autofocus: true,
                textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed:()
                  {
                    addTaskCallBack(taskMessage);
                    Navigator.pop(context);
                  },
                  child: const Text('Add Task')
                  )
            ],
          ),
      ),
    );
  }
}