import 'package:flutter/material.dart';

class Myfab extends StatefulWidget {
  const Myfab({super.key});

  @override
  State<Myfab> createState() => _MyfabState();
}

class _MyfabState extends State<Myfab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
  onPressed: () {},
  label: Text ("floatingactionbutton"),
    );
  }
}