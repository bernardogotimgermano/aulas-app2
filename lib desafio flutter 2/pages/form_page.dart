import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_alert.dart';
import 'package:flutter_application_1/widgets/my_checkbox.dart';
import 'package:flutter_application_1/widgets/my_radio.dart';
import 'package:flutter_application_1/widgets/my_text_field.dart';
import 'package:flutter_application_1/widgets/mybutton.dart';
import 'package:flutter_application_1/widgets/myslider.dart';
import 'package:flutter_application_1/widgets/myswitch.dart';
import 'package:flutter_application_1/widgets/mytitle.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/pages/login_page.dart';


class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  double   _sliderValue = 0;
 bool _notfy = false;
 final List<String> _listPrefs = [];
 String _gender = "Masculino";
 final TextEditingController _controllerNome = TextEditingController();
 final TextEditingController _controllerData = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerNome.dispose();
    _controllerData.dispose();
    super.dispose();
  }
  
  void _changeList (String pref) {
    (!_listPrefs.contains(pref))
    ? _listPrefs.add(pref)
    : _listPrefs.remove(pref);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário Flutter",
          style: GoogleFonts.uchen(),
        ),
      ),

            drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              accountName: const Text('Bernardo gotim'),
              accountEmail: const Text('bernardogotim@email.com'),
              currentAccountPicture: const CircleAvatar(
                child: Icon(Icons.person, size: 40),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Preferências'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Spacer(),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                'Sair',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  (route) => false,
                );
              },
            ),
          ],
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
                  "Dados pessoais:",
                  style: GoogleFonts.uchen(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Nome",
                  isDate: false,
                  controller: _controllerNome ,
                  ),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                title: "Data de nascimento",
                isDate: true,
                controller: _controllerData,
                ),
              ),

              SizedBox(height: 15),

              Padding(
                padding: EdgeInsetsGeometry.only(bottom: 8),
                child: Text(
                  "Gênero:",
                  style: GoogleFonts.uchen(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              SizedBox(height: 15),

              MyRadio(),

              SizedBox(height: 15,),

              Mytitle(title: "Preferências"),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(
                    title: "Música",
                    value: _changeList,
                    ),
                  MyCheckbox(
                    title: "Esportes",
                    value: _changeList,
                    )
                ],
              ),
                          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(
                    title: "Filmes e séries",
                    value: _changeList,
                    ),
                  MyCheckbox(
                    title: "Culinária",
                    value: _changeList,
                    ),
                ]
              ),

              SizedBox(height: 15,),

              Mytitle (title: "Escolaridade"),

              SizedBox( height: 15,),

              MySlider(
                value:(v){
                 
                    _sliderValue = v!;
                  
                }
              ),

              SizedBox(height: 15,),

              MySwitch (
                title: "Deseja receber notificação?",
                value: (v){
                 
                    _notfy = v!;
                  
                },
                ),

              SizedBox(height: 15,),

                 MyButton (
                title: "Salvar",
                icons: Icons.save,
                onclick: (){
                  print(_controllerNome);
                  print(_controllerData);
                  print(_sliderValue);
                  print(_gender);
                  print(_listPrefs);
                  print(_notfy);

                  MyAlert.showSimplaeDialog(
                    context, "Dados cadastrais",
                  "${_controllerNome.text}\n"
                  "${_controllerData.text}\n"
                  "$_gender\n"
                  "$_sliderValue\n"
                  "$_notfy\n"

                  );
                },
                )
                ],
              )
          ),
        ),
    );
 }
}
