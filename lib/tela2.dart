import 'package:flutter/material.dart';

class tela2 extends StatelessWidget {
  final String nome;
  final String email;
  final String telefone;

  const tela2(
      {required this.nome,
      required this.email,
      required this.telefone,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 2"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(235, 235, 227, 227),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                    color: Color.fromARGB(166, 118, 240, 240),
                    border: Border.all(
                      color: Colors.cyan,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                            0.2), // Cor da sombra com transparência
                        spreadRadius: 2, // Quanto a sombra se espalha
                        blurRadius: 10, // Suavidade da sombra
                        offset: Offset(4, 4), // Deslocamento da sombra (x, y)
                      )
                    ]),
                child: Column(children: [
                  Text(
                    "Nome: $nome",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 41, 19, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Email: $email",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 41, 19, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Telefone: $telefone",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 41, 19, 1)),
                  )
                ])),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text("Voltar para Base"),
            ),
          ],
        ),
      ),
    );
  }
}
