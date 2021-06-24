import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roda_bem_app/models/posts.dart';
import 'package:roda_bem_app/provider/fretes.dart';

class CadastroFrete extends StatefulWidget {
  @override
  _CadastroFreteState createState() => _CadastroFreteState();
}

class _CadastroFreteState extends State<CadastroFrete> {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(Posts posts) {
    _formData['id'] = posts.id;
    _formData['nome'] = posts.nome;
    _formData['tipocaminhao'] = posts.tipocaminhao;
    _formData['tipocarga'] = posts.tipocarga;
    _formData['tipofrete'] = posts.tipofrete;
    _formData['tituloanuncio'] = posts.tituloanuncio;
    _formData['origem'] = posts.origem;
    _formData['destino'] = posts.destino;
  }

  @override
  Widget build(BuildContext context) {
    final Posts posts = ModalRoute.of(context).settings.arguments;

    _loadFormData(posts);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastre seu frete'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              _form.currentState.save();
              Provider.of<Fretes>(context, listen: false).put(
                Posts(
                  id: _formData['id'],
                  nome: _formData['nome'],
                  tipocaminhao: _formData['tipocaminhao'],
                  origem: _formData['origem'],
                  destino: _formData['destino'],
                  tipocarga: _formData['tipocarga'],
                  tipofrete: _formData['tipofrete'],
                ),
              );
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                initialValue: _formData['nome'],
                decoration: InputDecoration(labelText: 'Nome'),
                onSaved: (value) => _formData['nome'] = value,
              ),
              TextFormField(
                initialValue: _formData['tituloanuncio'],
                decoration: InputDecoration(labelText: 'Título do Anúncio'),
                onSaved: (value) => _formData['Título do Anúnicio'] = value,
              ),
              TextFormField(
                initialValue: _formData['tipocaminhao'],
                decoration: InputDecoration(labelText: 'Tipo do Caminhão'),
                onSaved: (value) => _formData['tipocaminhao'] = value,
              ),
              TextFormField(
                initialValue: _formData['origem'],
                decoration: InputDecoration(labelText: 'Origem'),
                onSaved: (value) => _formData['origem'] = value,
              ),
              TextFormField(
                initialValue: _formData['destino'],
                decoration: InputDecoration(labelText: 'Destino'),
                onSaved: (value) => _formData['destino'] = value,
              ),
              TextFormField(
                initialValue: _formData['tipocarga'],
                decoration: InputDecoration(labelText: 'Tipo de Carga'),
                onSaved: (value) => _formData['tipocarga'] = value,
              ),
              TextFormField(
                initialValue: _formData['tipofrete'],
                decoration: InputDecoration(labelText: 'Tipo de Frete'),
                onSaved: (value) => _formData['tipofrete'] = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
