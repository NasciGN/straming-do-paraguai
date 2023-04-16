import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:streaming_do_paraguai/models/filmes.dart';

class CardDetail extends StatelessWidget {
  final Filmes filme;

  CardDetail({required this.filme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filme.titulo),
      ),
      body: Column(children: [Text(filme.titulo)]),
    );
  }
}
