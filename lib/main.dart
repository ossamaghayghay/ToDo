import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_app_bootcamp/screen/tasks_screen.dart';

import 'controller/controller_satete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<TasksController>(
      create: ((_) => TasksController()),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  TaskScreen(),
      ),
    );
  }
}

  