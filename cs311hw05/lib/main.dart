import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(
          150,
          (i) =>
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${i + 1}.png'), // generate a list of 150 Pokemon
    ),
  );
}

class MyApp extends StatefulWidget {
  final List<String> items;
  const MyApp({super.key, required this.items});

  @override
  State<StatefulWidget> createState() => _FavoriteWidgetState(items: items);
}

class _FavoriteWidgetState extends State<MyApp> {
  final List<String> items;
  List<bool> isfavorite = List<bool>.generate(150, (index) => false);
  int countFavorite = 0;
  _FavoriteWidgetState({required this.items});
  @override
  Widget build(BuildContext context) {
    const title = "Pokemon List";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: countFavorite == 0
                  ? const Text(title)
                  : Text(title + ' ($countFavorite)')),
        ),
        body: ListView.builder(
          itemCount: items.length ~/
              3, // 3 items per row so we divide the number of items by 3
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(
                    child: Stack(
                  // Stack is for overlaying Favorite icon on top of image
                  children: [
                    Image.network(items[index * 3]),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (isfavorite[index * 3] == false) {
                            isfavorite[index * 3] = true;
                            countFavorite += 1;
                          } else {
                            isfavorite[index * 3] = false;
                            countFavorite -= 1;
                          }
                        });
                      },
                      icon: (isfavorite[index * 3]
                          ? const Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 222, 26, 12),
                            )
                          : const Icon(Icons.favorite_border)),
                      iconSize: 40,
                    )
                  ],
                )),
                Expanded(
                    child: Stack(
                  children: [
                    Image.network(items[index * 3 + 1]),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (isfavorite[index * 3 + 1] == false) {
                            isfavorite[index * 3 + 1] = true;
                            countFavorite += 1;
                          } else {
                            isfavorite[index * 3 + 1] = false;
                            countFavorite -= 1;
                          }
                        });
                      },
                      icon: (isfavorite[index * 3 + 1]
                          ? const Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 222, 26, 12),
                            )
                          : const Icon(Icons.favorite_border)),
                      iconSize: 40,
                    )
                  ],
                )),
                Expanded(
                    child: Stack(
                  children: [
                    Image.network(items[index * 3 + 2]),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (isfavorite[index * 3 + 2] == false) {
                            isfavorite[index * 3 + 2] = true;
                            countFavorite += 1;
                          } else {
                            isfavorite[index * 3 + 2] = false;
                            countFavorite -= 1;
                          }
                        });
                      },
                      icon: (isfavorite[index * 3 + 2]
                          ? const Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 222, 26, 12),
                            )
                          : const Icon(Icons.favorite_border)),
                      iconSize: 40,
                    )
                  ],
                )),
              ],
            );
          },
        ),
      ),
    );
  }
}
