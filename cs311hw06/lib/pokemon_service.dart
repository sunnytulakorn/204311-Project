import 'package:cs311hw06/pokemon_api.dart';
import 'package:flutter/material.dart';

class PokemonService extends ChangeNotifier {
  int pokemonCount = 1;
  int currentIndex = 1;
  int colorType = 0xFF7AC74C;

  void changePokemonCount(int value) {
    pokemonCount += value;
    if (pokemonCount < 0) {
      pokemonCount = 0;
    }
    notifyListeners();
  }
  void PokemonCurrent(int index) async {
    currentIndex = index;
    PokemonInfo pokemon = await fetchPokemonInfo(currentIndex);
    String types = pokemon.types[0];
    print(types);
    if (types == "normal"){
      colorType = 0xFFA8A77A;
    } else if (types == "fire") {
      colorType = 0xFFEE8130;
    } else if (types == "water") {
      colorType = 0xFF6390F0;
    } else if (types == "electric") {
      colorType = 0xFFF7D02C;
    } else if (types == "grass") {
      colorType = 0xFF7AC74C;
    } else if (types == "ice") {
      colorType = 0xFF96D9D6;
    } else if (types == "fighting") {
      colorType = 0xFFC22E28;
    } else if (types == "poison") {
      colorType = 0xFFA33EA1;
    } else if (types == "ground") {
      colorType = 0xFFE2BF65;
    } else if (types == "flying") {
      colorType = 0xFFA98FF3;
    }else if (types == "psychic") {
      colorType = 0xFFF95587;
    } else if (types == "bug") {
      colorType = 0xFFA6B91A;
    } else if (types == "rock") {
      colorType = 0xFFB6A136;
    } else if (types == "ghost") {
      colorType = 0xFF735797;
    } else if (types == "dragon") {
      colorType = 0xFF6F35FC;
    } else if (types == "dark") {
      colorType = 0xFF705746;
    } else if (types == "steel") {
      colorType = 0xFFB7B7CE;
    } else {
      colorType = 0xFFD685AD;
    }
    notifyListeners();
  }
}
