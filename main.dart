import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(home: Login()));
}

//criando a tela de login

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      //titulo do app
      appBar: AppBar(
        title: Text(
          'Tela de Login',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Color(0xFF002060),
      ), //appbar
      //conteudo da pagina
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            //titulo da tela do app
            Text('Acesso ao Sistema', style: TextStyle(fontSize: 24)), //text
            SizedBox(height: 24),

            TextField(decoration: InputDecoration(labelText: 'E-mail')),

            SizedBox(height: 24),

            TextField(
              decoration: InputDecoration(labelText: 'Senha'),
            ), //textField

            SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                print('Botão pressionado');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF002060), // Cor de fundo azul escuro
                foregroundColor: Colors.white, // Cor do texto branca
              ),
              child: Text('Entrar'),
            ), //ElevatedButton
          ],
        ), //Column
      ), //Padding
    ); //scaffold
  }
}
