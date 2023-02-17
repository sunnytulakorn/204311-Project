import 'package:cs311hw08/character_detail.dart';
import 'package:cs311hw08/character_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'genshin_characters_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  testWidgets('Found Listview', (tester) async {
    final client = MockClient();
    when(client.get(Uri.parse('https://api.genshin.dev/characters')))
        .thenAnswer((_) async => Future.delayed(
            const Duration(seconds: 1),
            () => http.Response(
                '["albedo","aloy","amber","arataki-itto","ayaka","ayato"]',
                200)));
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CharacterList(client: client),
      ),
    ));
    await tester.pumpAndSettle();

    final findListView = find.byType(ListView);

    expect(findListView, findsOneWidget);
  });

  testWidgets('Cant find Listview', (tester) async {
    final client = MockClient();
    when(client.get(Uri.parse('https://api.genshin.dev/characters')))
        .thenAnswer((_) async => Future.delayed(
            const Duration(seconds: 1), () => http.Response('Not Found', 404)));
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CharacterList(client: client),
      ),
    ));
    await tester.pumpAndSettle();

    final findListView = find.byType(ListView);
    expect(findListView, findsNothing);
  });

  testWidgets('Test ListTile', (tester) async {
    final client = MockClient();
    when(client.get(Uri.parse('https://api.genshin.dev/characters')))
        .thenAnswer((_) async => Future.delayed(
            const Duration(seconds: 1),
            () => http.Response(
                '["albedo","aloy","amber","arataki-itto","ayaka","ayato"]',
                200)));
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CharacterList(client: client),
      ),
    ));
    await tester.pumpAndSettle();

    final findListTile = find.byType(ListTile);

    expect(findListTile, findsWidgets);
  });

  testWidgets('When onTap get CharacterDetail', (tester) async {
    final client = MockClient();
    when(client.get(Uri.parse('https://api.genshin.dev/characters')))
        .thenAnswer((_) async => Future.delayed(
            const Duration(seconds: 1),
            () => http.Response(
                '["albedo","aloy","amber","arataki-itto","ayaka","ayato"]',
                200)));
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CharacterList(client: client),
      ),
    ));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(ListTile).first);
    await tester.pumpAndSettle();
    
    final findCharacterDetail = find.byType(CharacterDetail);

    expect(findCharacterDetail, findsOneWidget);
  });
}
