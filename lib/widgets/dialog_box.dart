import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightBlue,
      content: Container(
        height: 200,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Text("data"),
            TextField(),
            TextButton(onPressed: (){

            }, child: Text("Alert box"))
          ],
        ),
      ),
    );
  }
}