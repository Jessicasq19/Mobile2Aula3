import 'package:app_login/pag1.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: TelaLogin(),
  ));
}
 TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();
class TelaLogin extends StatelessWidget {
 
  TelaLogin( {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP Aula 03 - Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(labelText: "Digite seu nome"),
            controller: _user,
          ),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(labelText: "Digite a senha"),
            obscureText: true,
            obscuringCharacter: "*",
            controller: _pass,
          ),
            ElevatedButton(onPressed: (){
              print(_user.text);
              print(_pass.text);
              }, child: Text("Exibir")),
              ElevatedButton(onPressed: (){
              _user.text = "";
              _pass.text = "";
              }, child: Text("Limpar")),
            ElevatedButton(onPressed: (){
                if (_user.text == "Jessy" && _pass.text == "1234")
                _user.text = "";
                _pass.text = "";
                Navigator.push(context, MaterialPageRoute(builder: (context) => TelaInicial()));
                else print("Login ou senha incorretos!");
              }, child: Text("Login")),
        ],
      ),
    );
  }
}