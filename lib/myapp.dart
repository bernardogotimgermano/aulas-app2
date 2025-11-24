import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/form_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Formulário Flutter",
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: FormPage(),
    );
  }
}