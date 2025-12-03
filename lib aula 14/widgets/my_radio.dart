import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
    const MyRadio({super.key,required});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String _value = "Masculino";

  @override
  Widget build(BuildContext context) {
    return RadioGroup(
      groupValue: _value,
      onChanged: (v){
        setState(() {
          _value = v.toString();
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: RadioListTile(
              value:"Masculino",
              title: Text("masculino"),
              controlAffinity: ListTileControlAffinity.leading,
              )
              
            ),
            Expanded(
            child: RadioListTile(
              value:"Feminino",
              title: Text("Feminino"),
              controlAffinity: ListTileControlAffinity.leading,
              )
            )
        ],
      ),
    );
  }
}