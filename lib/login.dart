import 'package:flutter/material.dart';
import 'package:roda_bem_app/routes/app_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

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
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  height: 20,
                ),
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
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                // ignore: deprecated_member_use
                ElevatedButton(
                  onPressed: () {
                    if (email == 'admin' && password == 'admin') {
                      print('Correto');
                      Navigator.of(context).pushNamed(AppRoutes.ComEstado);
                    }
                  },
                  child: Text('Login '),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.CadastroPage);
                    },
                    child: Text('Cadastrar')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
