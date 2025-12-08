import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/form_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              
              const Icon(
                Icons.person,
                size: 100,
              ),

              const SizedBox(height: 32),

           
              TextField(
                controller: usuarioController,
                decoration: const InputDecoration(
                  labelText: 'Usuário',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 16),

              // SENHA
              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              const SizedBox(height: 24),

             
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    String usuario = usuarioController.text;
                    String senha = senhaController.text;

                    if (usuario == 'admin' && senha == '123') {
                      
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const FormPage(),
                          
                          ));

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login realizado com sucesso!')),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Usuário ou senha inválidos')),
                      );
                    }
                  },
                  child: const Text('ENTRAR'),
                ),
              ),

              const SizedBox(height: 12),

             
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Tela de cadastro ainda não criada')),
                    );
                  },
                  child: const Text('CADASTRAR'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
