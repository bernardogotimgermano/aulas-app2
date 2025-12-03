
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyTextField extends StatefulWidget {
  final String? title;
  final bool? isDate;
  final TextEditingController? controller;

  const MyTextField({super.key, required this.title,required this.isDate,required this.controller});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

 DateTime? _selectedDate;
 TextEditingController? _controller;
 
  @override
  initState() {
    _controller = widget.controller!;
    super.initState();
  }
  
  Future<void> _selectDate() async {

    final DateTime? pickedDate = await showDatePicker(
      context: context, 
      firstDate: DateTime(1940), 
      lastDate: DateTime(2030),
      initialDate: DateTime.now()
      );

      setState(() {
        _selectedDate = pickedDate;
        _controller!.text = (_selectedDate != null)
        ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
        : "selecione uma data";
      });
  }
  
  
  var maskDate = MaskTextInputFormatter (
   mask: "##/##/####",
  filter: {"#":RegExp(r'[0-9]')}
    ); 
 

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: (widget.isDate!)
      ?[maskDate]
      :[],
      controller: _controller,
      decoration: InputDecoration(
        label: Text(widget.title!),
        border: OutlineInputBorder(),
        suffixIcon: (widget.isDate!)
        ? IconButton(onPressed: _selectDate, icon: Icon(Icons.calendar_month))
         : null

        ),
      );
    }
  }