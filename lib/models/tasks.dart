class Tasks{


  String? taskName;
  bool? isDone;
  
  Tasks({this.taskName,this.isDone=false});
  
  toggoleDone()
  {
    isDone = !isDone!;
  }
}