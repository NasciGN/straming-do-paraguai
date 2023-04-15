import 'dart:ffi';

import 'package:flutter/material.dart';

class Filmes {
  final String titulo; // Title
  final String sinopse; // Overview
  final double nota; // vote_average
  final List genero; // Gender
  final String urlPoster; // path_poster

  Filmes({
    required this.titulo,
    required this.sinopse,
    required this.nota,
    required this.genero,
    required this.urlPoster,
  });
}
