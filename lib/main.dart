import 'package:flutter/material.dart';
import 'package:streaming_do_paraguai/home_screen.dart';
import 'package:streaming_do_paraguai/views/system/download_page.dart';
import 'package:streaming_do_paraguai/views/system/search_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (_) => HomeScreen(),
      '/search': (_) => SearchPage(),
      '/download': (_) => DownloadPage(),
    },
  ));
}
