import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:week8/genshin_characters.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({super.key, required this.client});

  final http.Client client;

  @override
  State<CharacterList> createState() => _CharacterListState();
}
class _CharacterListState extends State<CharacterList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Genshin Character"),
      ),
      body: FutureBuilder<GenshinCharacters>(
        future: fetchCharacters(widget.client),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final characters = snapshot.data!.genshinCharacters;
            return ListView.builder(
              itemCount : characters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data!.genshinCharacters[index]),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
