import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "formulário flutter",
          style: GoogleFonts.uchen(),
        ),
      ),
     
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsetsGeometry.only(bottom: 8),
                child: Text(
                  "Dados Pessoais:", 
                  style: GoogleFonts.uchen(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
             SizedBox(
               width: double.infinity,
               child: MyTextField(),
             ),

             SizedBox( height: 15 ),
             
             SizedBox(
               width: double.infinity,
               child: MyTextField(),

               
             )
            ],
          ),
        ),
       ),   
    );
  }
}