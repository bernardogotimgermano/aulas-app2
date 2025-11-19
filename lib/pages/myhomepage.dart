import 'package:desafio1/widgets/myappbar.dart';
import 'package:desafio1/widgets/mycontainer.dart';
import 'package:desafio1/widgets/myelev.dart';
import 'package:desafio1/widgets/myfab.dart';
import 'package:desafio1/widgets/mytxt.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "desafio flutter - 1",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(),
        ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
      children: [Myfab(), MyElev(), Mytxt(), Mycontainer()],
        ),
      )
    );
  }
}