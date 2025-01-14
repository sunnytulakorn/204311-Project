import 'package:cs311hw06/pokemon_api.dart';

import 'my_bottom_navigation.dart';
import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyPokemonApp());
}

class MyPokemonApp extends StatefulWidget {
  const MyPokemonApp({super.key});

  State<StatefulWidget> createState() => _MypokemonApp();

}
  // This widget is the root of your application.
class _MypokemonApp extends State<MyPokemonApp> {
  Map<int, Color> shadeColor = {
    50: const Color.fromRGBO(136, 14, 79, .1),
    100: const Color.fromRGBO(136, 14, 79, .2),
    200: const Color.fromRGBO(136, 14, 79, .3),
    300: const Color.fromRGBO(136, 14, 79, .4),
    400: const Color.fromRGBO(136, 14, 79, .5),
    500: const Color.fromRGBO(136, 14, 79, .6),
    600: const Color.fromRGBO(136, 14, 79, .7),
    700: const Color.fromRGBO(136, 14, 79, .8),
    800: const Color.fromRGBO(136, 14, 79, .9),
    900: const Color.fromRGBO(136, 14, 79, 1),
  };
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( // for home and appbar change
        create: (_) => PokemonService(),
        child: Consumer<PokemonService>(
          builder: (_, pokemonService, __) {
            return MaterialApp(
      title: 'Pokemon Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(pokemonService.colorType,shadeColor), // change appbar color
      ),
      home: const MyBottomNavigation(),
      );
          },
        ),
    );
  }
}