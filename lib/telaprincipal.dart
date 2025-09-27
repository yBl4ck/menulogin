import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menulogin/botonenviar.dart';

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({super.key});

  @override
  State<Telaprincipal> createState() => _TelaprincipalState();
}

class _TelaprincipalState extends State<Telaprincipal> {
  var _mostrarTexto = false;
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  var _controller3 = TextEditingController();
  var _controller4 = TextEditingController();
  var _controller5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Login"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(40),
          child: Column(children: [
            Image.asset(
              "../assets/images.png",
              width: 200,
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(
                    color: Colors.blue,
                    child: Text(
                      "Vamos Nos Cadastrar Animalzinho?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            TextField(
              controller: _controller1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: "Nome",
                  hintText: "Digite seu Nome Infeliz",
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controller2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: "Digite seu Email",
                  hintText: "Digite seu Email Infeliz",
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: _controller3,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: "Digite seu Telefone",
                  hintText: "Digite seu Telefone Infeliz",
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 10,
            ),
            MyWidget(
                nome: _controller1, email: _controller2, telefone: _controller3)

            /*TextField(
                controller: _controller5,
                obscureText: _mostrarTexto,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  labelText: "Password",
                  hintText: "Digite sua Password Infeliz",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _mostrarTexto = !_mostrarTexto;
                    });
                  },
                  icon: _mostrarTexto ? Icon(Icons.visibility) : Icon(Icons.visibility_off)), 
                  
                  
                ),
                
              ),*/
          ])),
    );
  }
}
