import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "TaskWarrior client",
      home: TaskList(),
    )
  );
}

class TaskList extends StatelessWidget{
  const TaskList({super.key});

  @override
  Widget build(BuildContext context){
      return 
      ListView(
        children: const [
          Text("hello"),
          Text("World")
        ],
      ); 
  }

}

