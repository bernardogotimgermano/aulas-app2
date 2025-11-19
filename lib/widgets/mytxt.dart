import 'package:flutter/material.dart';

class Mytxt extends StatefulWidget {
  const Mytxt({super.key});

  @override
  State<Mytxt> createState() => _MytxtState();
}

class _MytxtState extends State<Mytxt> {
  @override
   Widget build(BuildContext context) {
    return FloatingActionButton.extended(
  onPressed: () {},
  label: Text ("floatingactionbutton"),
    );
  }
}