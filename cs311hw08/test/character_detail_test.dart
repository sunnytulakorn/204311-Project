import 'package:cs311hw08/character_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'genshin_characters_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  testWidgets("return column", (tester) async {
    final client = MockClient();

    when(client.get(Uri.parse(
            'https://api.genshin.dev/characters/raiden')))
        .thenAnswer((_) async => http.Response(
            '{"name":"Raiden Shogun","vision":"Electro","weapon":"Polearm","nation":"Inazuma","description":"Her Excellency, the Almighty, Narukami Ogosho, who promised the people of Inazuma an unchanging Eternity."}',
            200));
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(body: CharacterDetail(name: 'raiden', client: client))));
    await tester.pumpAndSettle();

    final findColumn = find.byType(Column);
    expect(findColumn, findsOneWidget);
  });

  testWidgets("throws an exception when error",
      (tester) async {
    final client = MockClient();

    when(client.get(Uri.parse('https://api.genshin.dev/characters/raiden')))
        .thenAnswer((_) async => http.Response('Not Found', 404));

    await tester.pumpWidget(
        MaterialApp(home: CharacterDetail(name: "raiden", client: client)));
    await tester.pumpAndSettle();

    final findText = find.byType(Text);
    expect(findText, findsWidgets);
  });
}