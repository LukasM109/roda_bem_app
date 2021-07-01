import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roda_bem_app/models/posts.dart';
import 'package:roda_bem_app/provider/fretes.dart';
import 'package:roda_bem_app/routes/app_routes.dart';
//components - user_tile

class PostsTile extends StatelessWidget {
  final Posts posts;
  const PostsTile(this.posts);

  @override
  Widget build(BuildContext context) {
    final avatar = posts.avatar == null || posts.avatar.isEmpty
        ? CircleAvatar(child: Icon(Icons.add_road))
        : CircleAvatar(backgroundImage: NetworkImage(posts.avatar));
    return ListTile(
      leading: avatar,
      title: Text(posts.nome),
      subtitle: Text(posts.origem),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.CadastroFrete, arguments: posts);
                }),
            IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Deseja mesmo excluir?'),
                            content: Text('Tem certeza?'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Não'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text('Sim'),
                                onPressed: () {
                                  Provider.of<Fretes>(context, listen: false)
                                      .remove(posts);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ));
                }),
          ],
        ),
      ),
    );
  }
}
