import 'package:flutter/material.dart';
import 'package:todoapp/sections/todo_tile.dart';

class TodoTile extends StatelessWidget {
  final String todoName;
  final bool todoDone;
  Function (bool?)?onChanged;
  Function(BuildContext)? deletetodo;
  
     TodoTile(
      {super.key,
      required this.todoName,
      required this.todoDone,
      required this.onChanged,
      required this.deletetodo});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 25,top: 20,right: 25),
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration( color: const Color.fromARGB(255, 135, 175, 245),
      borderRadius: BorderRadius.circular(5)),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Checkbox(value: todoDone, 
            onChanged: onChanged,
            activeColor:Colors.green,),
          Text(todoName,
          style: TextStyle(decoration: todoDone? TextDecoration.lineThrough : TextDecoration.none),
          ),
          ElevatedButton(
            
            onPressed:(){
              if (deletetodo != null) {
                  deletetodo!(context);
                }
            },
            child: Icon(Icons.delete,
            color: Colors.red
        ),
        
        ),
        ],
      ),
    ),
    
    );
      
  }
}

