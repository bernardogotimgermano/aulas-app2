import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? title;
  final IconData? icons;
  final VoidCallback? onclick;

  const MyButton({super.key, this.title, required this.icons, required this.onclick});

  @override
  Widget build(BuildContext context) {
    return SizedBox (
      width: double.infinity,
      child: ElevatedButton.icon(
      onPressed: onclick, 
      label: Text(title!),
      icon: Icon(icons!),
      
     ),
   );
  }
}