import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  //const CadastroPage({key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  String nome = '';
  String cpf = '';
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                ),
                TextField(
                  onChanged: (text) {
                    nome = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    cpf = text;
                  },
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    labelText: 'CPF/CNPJ',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      if (nome != '' &&
                          cpf != '' &&
                          email != '' &&
                          senha != '') {
                        Navigator.of(context)
                            .pushReplacementNamed('/ComEstado');
                      }
                    },
                    child: Text('Cadastrar'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
