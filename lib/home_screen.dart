import 'package:flutter/material.dart';
import 'package:streaming_do_paraguai/models/filmes.dart';
import 'package:streaming_do_paraguai/modelviews/tmdb_service.dart';
import 'package:streaming_do_paraguai/views/widgets/item_card.dart';
import 'views/widgets/bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Filmes> movieList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchMovies();
  }

  void fetchMovies() async {
    try {
      TmdbService tmdbService = TmdbService();
      movieList = await tmdbService.fetchPopularMovies();
    } catch (e) {
      print('Erro ao carregar filmes: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultIconDarkColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
            Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/icon-perfil.png'),
            ),
          ],
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [
                      Text(
                        'Populares',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movieList.length - 1,
                      itemBuilder: (BuildContext context, int index) {
                        return CardFilme(filme: movieList[index + 1]);
                      }),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text(
                        'Filmes',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movieList.length - 1,
                      itemBuilder: (BuildContext context, int index) {
                        return CardFilme(filme: movieList[index + 1]);
                      }),
                ),
              ],
            ),
      bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.all(10), child: FotterAppBar()),
    );
  }
}
