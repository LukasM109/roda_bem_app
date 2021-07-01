import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roda_bem_app/components/posts_tile.dart';
import 'package:roda_bem_app/provider/fretes.dart';
import 'package:roda_bem_app/routes/app_routes.dart';

//user_list
class ComEstado extends StatefulWidget {
  @override
  State<ComEstado> createState() {
    return Estado();
  }
}

class Estado extends State<ComEstado> {
  @override
  Widget build(BuildContext context) {
    final Fretes posts = Provider.of(context);

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/foto.jpg')),
              accountName: Text('Lukas'),
              accountEmail: Text('lukas109@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/ComEstado');
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business),
              title: Text('Cadastrar Frete'),
              onTap: () {
                Navigator.of(context).pushNamed('/cadfrete');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Roda Bem"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.CadastroFrete);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.count,
        itemBuilder: (ctx, i) => PostsTile(posts.byIndex(i)),
      ),
    );
  }
}
