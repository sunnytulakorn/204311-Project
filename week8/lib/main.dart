import 'package:flutter/material.dart';
import 'package:week8/character_list.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CharacterList(client: http.Client(),),
    );
  }
}

