import 'package:flutter/material.dart';



class MyAlert {
  static void showSimplaeDialog(BuildContext context, String tilte, String message) {
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
        title: Text(tilte),
        content: Text(message),
        actions: [
      
 TextButton(
  onPressed: (){
    Navigator.pop(context);
  }, 
  child: Text("OK")
        )      
       ],
      );    
     }
    );
   }
 }