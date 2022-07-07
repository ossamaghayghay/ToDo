import 'package:flutter/material.dart';

class ExctractTaskTile extends StatelessWidget {
   ExctractTaskTile({Key? key,required this.checkValue,required this.title,required this.checkboxCallback}) : super(key: key);

  final bool checkValue;
  final String title;
  final Function checkboxCallback;
  
  @override
  Widget build(BuildContext context) {
      return ListTile(
                  title: Text(title,style: TextStyle(decoration:checkValue?TextDecoration.lineThrough:null),),
                  trailing:  Checkbox(
                     value:checkValue,
                     activeColor: Colors.purple,
                     onChanged:(newVal){
                       checkboxCallback(newVal);
                     },
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
