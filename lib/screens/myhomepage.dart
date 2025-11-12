
import 'package:aula6/model/profile.dart';
import 'package:aula6/widgets/mycard.dart';
import 'package:aula6/widgets/mydrawer.dart';
import 'package:aula6/widgets/mystory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

List<Profile> ListaDados = [
  Profile(name: "OsWaldo" , image: "", like:true),
  Profile(name: "Augusto" , image: "", like:true),
  Profile(name: "Hilário" , image: "", like:true),
  Profile(name: "homer" , image: "", like:true),
  Profile(name: "Augusta" , image: "", like:true),
  ];

   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 6"),
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
       child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
               itemBuilder: (context, item) {
                 return MyStory(
                  title: ListaDados[item].name,
                  image: ListaDados[item].image,
                  );
               }
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ListaDados.length,
               itemBuilder: (context, item) {
                 return MyCard(
                  title: ListaDados[item].name,
                  image: ListaDados[item].image,
                  like: ListaDados [item]. like,
                  
                  );
               }
            ),
          )
        ],
       ), 
      )
    );
  }
}
