import 'package:flutter/material.dart';

class Addtodo extends StatefulWidget {
   Addtodo({super.key,});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {



  TextEditingController mytodo =TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 188, 245),
          title: Text("Todo App",style: TextStyle(color: Colors.black)),
        ),
        body: Center(
          
          
          child: Padding(
            padding: EdgeInsets.all(25),
            // mainAxisAlignment: MainAxisAlignment.center,
            child: Column(

            
            
            children: [
              
              TextField(controller: mytodo,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter you Todo Here...",
              ),
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


              ElevatedButton(onPressed: (){
                  String inputText = mytodo.text.trim();
                      if (inputText.isNotEmpty) {
                        Navigator.pop(context, inputText); // Pass the input text back
                        print("Added Todo: $inputText");
                      }
              }, 
              child: Text("Add Todo",style: TextStyle(color: Colors.black),),
              
              style:ButtonStyle(),),
              const SizedBox(
                width: 10,
              ),

              ElevatedButton(
                onPressed: (){
                Navigator.pop(context);
                print("Cancelled");
              }, 
              child: Text("Cancel",style: TextStyle(color: Colors.black),),
              
           )
              
                ]
              )
              
            ],
          ),
        ),
            ),

      ),
    );
  }
}