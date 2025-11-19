import 'package:flutter/material.dart';

class Mycontainer extends StatefulWidget {
  const Mycontainer({super.key});

  @override
  State<Mycontainer> createState() => _MycontainerState();
}

class _MycontainerState extends State<Mycontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 200,
    width: double.infinity,
    child: Center(
      child: Text ("eu amo flutter"),
    ),

    );
  }
}