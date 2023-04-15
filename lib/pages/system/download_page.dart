import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:streaming_do_paraguai/modelviews/tmdb_service.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  // String filme = '157336';
  // late Map<String, dynamic> filmData = Map();
  //
  // @override
  // void initState() {
  //   super.initState();
  //   fetchFilm(filme).then((data) {
  //     filmData = data;
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultIconDarkColor,
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 100,
            ),
            //   Text(
            //     'Nome: ${filmData["original_title"]}',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   Image.network(
            //       'https://image.tmdb.org/t/p/w500${filmData["poster_path"]}'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: const Icon(
                Icons.home_filled,
                size: 40,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/download');
              },
              child: const Icon(
                Icons.file_download_outlined,
                size: 40,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/search');
              },
              child: const Icon(
                Icons.search,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
