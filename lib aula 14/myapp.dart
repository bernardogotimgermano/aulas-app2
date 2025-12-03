import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/form_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("pt", "BR"),
      localizationsDelegates: [
       GlobalMaterialLocalizations.delegate, 
       GlobalMaterialLocalizations.delegate ,
       GlobalMaterialLocalizations.delegate ,
      ],
      supportedLocales: const [
      Locale("en", "US"),
      Locale("pt", "BR"),
     ],
      debugShowCheckedModeBanner: false,
      title: "Formulário Flutter",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: FormPage(),
    );
  }
}