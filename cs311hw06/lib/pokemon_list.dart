import 'pokemon_api.dart';
import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<StatefulWidget> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  int select = 1; //no select pokemon
  Widget build(BuildContext context) {
    return Consumer<PokemonService>(builder: (_, pokemonService, __) {
      return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Pokemon List", style: TextStyle(color: Colors.white),)),
        ),
        body: GridView.builder(
          itemCount: pokemonService.pokemonCount,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () { // when click
                setState(() {
                  select = index+1;
                  pokemonService.PokemonCurrent(index+1); 
                });
              },
              child: select == index + 1 ? Container( // condition select pokemon or not select pokemon
                child: Image.network(genPokemonImageUrl(index + 1)),
                decoration: BoxDecoration(border: Border.all(width: 3)))
                : Container(
                  child :Image.network(genPokemonImageUrl(index + 1)),
                decoration: BoxDecoration(border: Border.all(width: 1, color:const Color.fromARGB(255, 242, 242, 242)),
                )
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        ),
      );
    });
  }
}
