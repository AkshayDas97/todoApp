import 'package:flutter/material.dart';
import 'package:todoapp/addtodo.dart';
import 'package:todoapp/todo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',  
  
    routes: {
      '/': (context) => Todo(),
      '/addtodo': (context) => Addtodo(),
    },
   
  ));
}



