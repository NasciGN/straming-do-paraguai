import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FotterAppBar extends StatefulWidget {
  const FotterAppBar({super.key});

  @override
  State<FotterAppBar> createState() => _FotterAppBarState();
}

class _FotterAppBarState extends State<FotterAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
          child: const Icon(
            Icons.home_filled,
            size: 40,
            color: Colors.black,
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
    );
  }
}
