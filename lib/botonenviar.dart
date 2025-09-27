import 'package:flutter/material.dart';
import 'package:menulogin/tela2.dart';

class MyWidget extends StatelessWidget {
  final TextEditingController nome;
  final TextEditingController email;
  final TextEditingController telefone;
  const MyWidget({
    required this.nome,
    required this.email,
    required this.telefone,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return tela2(
            nome: nome.text,
            email: email.text,
            telefone: telefone.text,
          );
        }));
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
      child: Text("Enviar"),
    );
  }
}
