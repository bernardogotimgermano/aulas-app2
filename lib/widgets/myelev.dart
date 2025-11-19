import 'package:flutter/material.dart';

class MyElev extends StatefulWidget {
  const MyElev({super.key});

  @override
  State<MyElev> createState() => _MyElevState();
}

class _MyElevState extends State<MyElev> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("ElevatedButton"),
    );
  }
}
