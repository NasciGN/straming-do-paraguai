import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:streaming_do_paraguai/modelviews/tmdb_service.dart';
import '../widgets/bottom_bar.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
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
      bottomNavigationBar: const BottomAppBar(
          padding: EdgeInsets.all(10), child: FotterAppBar()),
    );
  }
}
