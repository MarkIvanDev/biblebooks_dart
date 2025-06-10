import 'package:biblebooks/biblebooks.dart';
import 'package:test/test.dart';

void main() {
  group('OSIS', () {
    test('All', () {
      final osis = BibleBooksHelper().allOsisCodes();
      expect(osis.every((c) => c.value.isNotEmpty), isTrue);
    });

    for (var book in BibleBook.values) {
      test(book.name, () {
        final osis = BibleBooksHelper().getOsisCode(book);
        expect(osis, isNotNull);

        final key = BibleBooksHelper().getKeyForOsisCode(osis!);
        expect(key == book, isTrue);
      });
    }
  });

  group('Paratext', () {
    test('All', () {
      final paratext = BibleBooksHelper().allParatextCodes();
      expect(paratext.every((c) => c.value.isNotEmpty), isTrue);
    });

    for (var book in BibleBook.values) {
      test(book.name, () {
        final paratext = BibleBooksHelper().getParatextCode(book);
        expect(paratext, isNotNull);

        final key = BibleBooksHelper().getKeyForParatextCode(paratext!);
        expect(key == book, isTrue);
      });
    }
  });
}
