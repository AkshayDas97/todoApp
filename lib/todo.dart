

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:todoapp/addtodo.dart';
import 'package:todoapp/sections/todo_tile.dart';
import 'package:todoapp/widgets/dialog_box.dart';


class Todo extends StatefulWidget {


  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {

  List todoList =[
    ["Make todo",false],
    ["Do functions",false]
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      todoList [index][1] = !todoList [index][1];
    });

  }


// to read the text file
TextEditingController mycontroller= TextEditingController();
String greet="";
void greetings(){
  setState(() {
    
  greet=mycontroller.text;
  });
  print(mycontroller.text);
}

Future<void> creatNewTask() async {
  final newTodo = await Navigator.pushNamed(context, '/addtodo');
    if ( newTodo is String ) {
      // Add the new todo to the list
      setState(() {
        todoList.add([newTodo, false]);
      });
    }
  

}

void deletee(int index){
  setState(() {
    todoList.removeAt(index);
  });
}



  @override
  Widget build(BuildContext context) {
        //  final String myfo = ModalRoute.of(context)!.settings.arguments as String;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,

  
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 175, 255, 109),
        appBar: AppBar(
          
          backgroundColor: const Color.fromARGB(255, 0, 188, 245),
          title: Text("Todo App",style: TextStyle(color: Colors.black)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: creatNewTask,
         
          child: Icon(
            Icons.add
          ),
          ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(todoName: todoList[index] [0],
             todoDone: todoList[index] [1],
              onChanged: (value) => checkBoxChanged(value,index),
              deletetodo: (context) => deletee(index),
              );
          },


        ),
      ),
    );
  }
}

