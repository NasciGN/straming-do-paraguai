import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:streaming_do_paraguai/models/filmes.dart';
import 'package:streaming_do_paraguai/views/widgets/item_page.dart';

class CardFilme extends StatelessWidget {
  final Filmes filme;

  CardFilme({required this.filme});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CardDetail(filme: filme)),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 10,
                ),
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: NetworkImage(filme.urlPoster),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
