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
      backgroundColor: kDefaultIconDarkColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(filme.titulo),
        backgroundColor: Color.fromARGB(150, 0, 0, 4),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(children: [
        Image.network(filme.urlPoster),
        Text('Descrição: ${filme.sinopse}',
            style: const TextStyle(color: Colors.white))
      ]),
    );
  }
}
