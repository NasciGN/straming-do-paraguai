import 'package:flutter/material.dart';
import '../widgets/bottom_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultIconDarkColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                width: 350,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(211, 12, 12, 12),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white30,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      hintText: 'Pesquisar...',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(211, 12, 12, 12)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.white30)),
                    ),
                    cursorColor: Color.fromARGB(255, 63, 61, 61),
                    style: TextStyle(
                      color: Color.fromARGB(211, 12, 12, 12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Veja também...',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Row(
                children: const [],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
          padding: EdgeInsets.all(10), child: FotterAppBar()),
    );
  }
}
