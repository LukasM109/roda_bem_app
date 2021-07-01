import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roda_bem_app/ComEstado.dart';
import 'package:roda_bem_app/cadastro.dart';
import 'package:roda_bem_app/cadfrete.dart';
import 'package:roda_bem_app/provider/fretes.dart';
import 'package:roda_bem_app/routes/app_routes.dart';

import 'login.dart';

//import 'ComEstado.dart';
//import 'Tema.dart';

class Home extends StatelessWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Fretes(),
        ),
      ],
      child: MaterialApp(
        routes: {
          AppRoutes.Home: (_) => LoginPage(),
          AppRoutes.CadastroFrete: (_) => CadastroFrete(),
          AppRoutes.ComEstado: (_) => ComEstado(),
          AppRoutes.CadastroPage: (_) => CadastroPage()
        },
      ),
    );
  }
}
