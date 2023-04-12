import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> imgList = [
  'assets/images/jonas-icon.png',
  'assets/images/jonas-icon.png',
  'assets/images/jonas-icon.png',
  'assets/images/jonas-icon.png',
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultIconDarkColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
            const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            ClipOval(
              child: Image.asset(
                'assets/images/icon-perfil.png',
                width: 40,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: const [
                  Text(
                    'Inicio',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
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
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://a-static.mlcdn.com.br/800x560/poster-cartaz-the-batman-j-pop-arte-poster/poparteskins2/15938542600/460cc2fc9d7762ea495bc086affa8785.jpeg"),
                        )),
                    child: Text(
                      'Teste',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: const Text(
                'Destaque da Semana',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            Row(
              children: [
                Container(
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
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://a-static.mlcdn.com.br/800x560/poster-cartaz-the-batman-j-pop-arte-poster/poparteskins2/15938542600/460cc2fc9d7762ea495bc086affa8785.jpeg"),
                      )),
                  child: Text(
                    'Teste',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: const Text(
                'Séries',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            Row(
              children: [
                Container(
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
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://a-static.mlcdn.com.br/800x560/poster-cartaz-the-batman-j-pop-arte-poster/poparteskins2/15938542600/460cc2fc9d7762ea495bc086affa8785.jpeg"),
                      )),
                  child: Text(
                    'Teste',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: const Text(
                'Filmes',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            Row(
              children: [
                Container(
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
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://a-static.mlcdn.com.br/800x560/poster-cartaz-the-batman-j-pop-arte-poster/poparteskins2/15938542600/460cc2fc9d7762ea495bc086affa8785.jpeg"),
                      )),
                  child: Text(
                    'Teste',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
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
        ),
      ),
    );
  }
}
