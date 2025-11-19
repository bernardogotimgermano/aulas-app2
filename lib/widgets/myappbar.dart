import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget {
  const Myappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("o que eu quiser"),
      centerTitle: true,
      backgroundColor: Colors.amber,
    );
  }
}