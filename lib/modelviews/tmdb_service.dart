import 'package:http/http.dart' as http;
import '../models/filmes.dart';
import 'dart:convert';

class TmdbService {
  String urlAPI = '1eea2e5c113db4b971e3bbf50ec104c8&language=pt-BR&page=1';
  String baseURL = 'https://api.themoviedb.org/3';
  String imgURL = 'https://image.tmdb.org/t/p/w500';

//
  // BUSCA OS FILMES POPULARES
  Future<List<Filmes>> fetchPopularMovies() async {
    final http.Response response =
        await http.get(Uri.parse('$baseURL/movie/popular?api_key=$urlAPI'));

    List<Filmes> filmes =
        []; // Cria uma lista de Objetos para receber os filmes populares.
    var jsonResponse = json.decode(response.body);
    for (var filmeJason in jsonResponse['results']) {
      // Percorre o JSON de results para armazenar o ID de cada filme que está lá
      Filmes filme = await fetchMovieDetails(filmeJason[
          'id']); // Chama o metodo para buscar os detalhes de cada filme com base no ID obtido na linha anterior, Esse método retorna um objeto
      filmes.add(filme); // Adiciona o objeto dentro da lista de filmes
    }
    return filmes;
  }

  // BUSCA OS DETALHES DE CADA FILME
  Future<Filmes> fetchMovieDetails(int idFilme) async {
    final response = await http.get(Uri.parse(
        '$baseURL/movie/$idFilme?api_key=$urlAPI&append_to_response=videos&language=pt-BR')); // Busca o filme com base no ID fornecido
    var filmeJson = jsonDecode(response.body);

    List<String> generos = [];
    for (var genreJson in filmeJson['genres']) {
      // Percorre o dicionario da lista de generos e os adiciona numa lista
      generos.add(genreJson['name']);
    }

    return Filmes(
      titulo: filmeJson['original_title'],
      sinopse: filmeJson['overview'],
      nota: filmeJson['vote_average'],
      genero: generos,
      urlPoster: filmeJson['/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg'],
    );
  }
}
