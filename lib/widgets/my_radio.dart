import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
   final bool? _value = false;
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: _value,
      title:  Text("Genero"),
    );
  }
}