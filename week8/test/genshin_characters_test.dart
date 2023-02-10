import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:week8/genshin_characters.dart';
import 'genshin_characters_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.

@GenerateMocks([http.Client])
void main() {
  test('Fetch data successfully', () async {
    final client = MockClient();
    when(client.get(Uri.parse('https://api.genshin.dev/characters')))
        .thenAnswer((_) async => http.Response(
            'Not Found', 404));
    expect(fetchCharacters(client), throwsException);
  });
}
