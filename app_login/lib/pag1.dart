import 'package:app_login/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 03 - Tela Inicial"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              color: Color.fromARGB(255, 166, 208, 228),
              width: 400,
              height: 180,
              child: Text(
                "LOGIN EFETUADO COM SUCESSO!!!",
                style: TextStyle(fontSize: 25),
              )),
              ElevatedButton(onPressed: (){
                
                Navigator.pop(context, MaterialPageRoute(builder: (context) => TelaLogin()));
              }, child: Text("Sair")),
        ],
      ),
    );
  }
}