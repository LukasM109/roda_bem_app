import 'package:flutter/cupertino.dart';

//class user
class Posts {
  final String id;
  final String nome;
  final String tituloanuncio;
  final String tipocaminhao;
  final String origem;
  final String destino;
  final String tipocarga;
  final String tipofrete;
  final avatar;

  const Posts({
    this.id,
    @required this.nome,
    this.tituloanuncio,
    @required this.tipocaminhao,
    @required this.origem,
    @required this.destino,
    @required this.tipocarga,
    @required this.tipofrete,
    this.avatar,
  });
}
