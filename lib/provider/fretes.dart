import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:roda_bem_app/data/dummy_posts.dart';
import 'package:roda_bem_app/models/posts.dart';

//users.dart

class Fretes with ChangeNotifier {
  final Map<String, Posts> _items = {...DUMMY_POSTS};
  List<Posts> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Posts byIndex(int i) {
    return _items.values.elementAt(i);
  }

  //altera, insere um elemento na lista
  void put(Posts posts) {
    if (posts == null) {
      return;
    }
    //altera se tiver
    if (posts.id != null &&
        posts.id.trim().isNotEmpty &&
        _items.containsKey(posts.id)) {
      _items.update(posts.id, (_) => posts);
    } //inclui se n tiver
    else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
          () => Posts(
              nome: posts.nome,
              tipocaminhao: posts.tipocaminhao,
              origem: posts.origem,
              destino: posts.destino,
              tipocarga: posts.tipocarga,
              tipofrete: posts.tipofrete));
    }
    notifyListeners();
  }

  //remove
  void remove(Posts posts) {
    if (posts != null && posts.id != null) {
      _items.remove(posts.id);
      notifyListeners();
    }
  }
}
