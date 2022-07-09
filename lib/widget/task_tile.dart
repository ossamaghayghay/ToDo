import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_app_bootcamp/controller/controller_satete.dart';
import 'package:to_app_bootcamp/models/tasks.dart';

class ExctractTaskTile extends StatelessWidget {
   ExctractTaskTile({Key? key,required this.checkValue,required this.title,required this.checkboxCallback}) : super(key: key);

  final bool checkValue;
  final String title;
  final Function checkboxCallback;
  


  Tasks? tasks;
  @override
  Widget build(BuildContext context) {
      return Dismissible(
        onDismissed:(direction) => Provider.of<TasksController>(context,listen: false).deleteTask(tasks!),
        direction: DismissDirection.startToEnd,
        background: Row(
          children: [
            Container(
              color: Colors.red,child: const Icon(Icons.delete),
              width:250,
              height: 100,
              ),
          ],
        ),
        key: const ValueKey('ListTile'),
        child: ListTile
              (
                    title: Text(title,style: TextStyle(decoration:checkValue?TextDecoration.lineThrough:null),),
                    trailing:  Checkbox(
                       value:checkValue,
                       activeColor: Colors.purple,
                       onChanged:(newVal){
                         checkboxCallback(newVal);
                       },
                     ),
             ),
      
      );
  }
}
/*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
// class EctractCheckbox extends StatelessWidget {
//   const EctractCheckbox({Key? key,required this.check,required this.onChanged}) : super(key: key);

//   final bool check; 
//   final Function onChanged;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value:check,
//       activeColor: Colors.purple,
//       onChanged:onChanged(),
//       );
//   }
// }
