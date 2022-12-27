import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(150, (i) => 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${i+1}.png'), // generate a list of 150 Pokemon
    ),
  );
}

class MyApp extends StatelessWidget {
  
  final List<String> items;

  const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Pokemon List',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child:Text('Pokemon List')),
        ),
        body: ListView.builder(
          itemCount: items.length ~/ 3, // 3 items per row so we divide the number of items by 3
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(child: Stack( // Stack is for overlaying Favorite icon on top of image
                  children: [
                    Image.network(items[index*3]),
                    FavoriteWidget(),
                  ],
                )),
                Expanded(child: Stack(
                  children: [
                    Image.network(items[index*3+1]),
                    FavoriteWidget(),
                  ],
                )),
                Expanded(child: Stack(
                  children: [
                    Image.network(items[index*3+2]),
                    FavoriteWidget(),
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

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteWidgetState();
  }
}

class _FavoriteWidgetState extends State<FavoriteWidget>{
  int _counter = 0;
  bool _isFavorite = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        IconButton(onPressed: () {
          setState(() {
            if(_isFavorite){
              _isFavorite = false;
              _incrementCounter;
            } else {
              _isFavorite = true;
             _incrementCounter;
            }
          });
        }, icon: Icon(
          _isFavorite ? (Icons.favorite) : (Icons.favorite_border), 
          color: _isFavorite ? Colors.red : null,
          size: 38,
        )),
        Text("$_counter"),
      ],
    );
  }
}