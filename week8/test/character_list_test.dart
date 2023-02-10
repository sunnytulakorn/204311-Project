import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:week8/character_list.dart';
import 'character_list_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  testWidgets("CharacterList should return a list of character",
      (tester) async {
    final client = MockClient();

    when(client.get(Uri.parse('https://api.genshin.dev/characters')))
        .thenAnswer((_) async => Future.delayed(
            const Duration(seconds: 1),
            () => http.Response(
                '["albedo","aloy","amber","arataki-itto","ayaka","ayato"]',
                200)));
                
    await tester.pumpWidget(MaterialApp(
      home: CharacterList(client: client),
    ));
    await tester.pumpAndSettle();

    final findListView = find.byType(ListView);

    expect(findListView, findsOneWidget);
  });
}
