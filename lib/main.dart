// Importa o pacote principal do Flutter para usar os widgets do Material Design.
import 'package:flutter/material.dart';

// A função main() é o ponto de entrada de todo app Dart/Flutter.
void main() {
  // runApp() infla o widget que passamos e o anexa à tela.
  runApp(const MeuApp());
}

// Nosso app será um StatelessWidget, pois seu estado não mudará (por enquanto).
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[700], // Mudei a cor para ficar mais legal
        body: const SafeArea( // SafeArea evita que o conteúdo fique atrás de entalhes da tela (notches)
          child: Center(
            child: Column(
              // Alinha os widgets no centro do eixo vertical (da coluna)
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0, // Metade do tamanho que você quer (diâmetro = 100)
                  backgroundImage: AssetImage('assets/jo.png'), // Sua imagem
                ),
                Text(
                  'João Pedro Soares',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Desenvolvedor Flutter',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Color.fromARGB(255, 122, 201, 193),
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal
                    ),
                    title: Text(
                      '+55 85 98711-0341',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      )
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}