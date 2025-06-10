import 'package:biblebooks/biblebooks.dart';
import 'package:test/test.dart';

void main() {
  group('Alternative', () {
    for (var locale in AppLocale.values) {
      test('All ${locale.name}', () {
        final alternativeNames =
            BibleBooksHelper().allAlternativeNames(locale: locale);
        expect(alternativeNames, isNotNull);
      });

      for (var book in BibleBook.values) {
        test('${book.name} ${locale.name}', () {
          final names =
              BibleBooksHelper().getAlternativeNames(book, locale: locale);
          expect(names, isNotNull);

          for (var name in names) {
            final key = BibleBooksHelper()
                .getKeyForAlternativeName(name, locale: locale);
            expect(key == book, isTrue);
          }
        });
      }
    }
  });

  group('Name', () {
    for (var locale in AppLocale.values) {
      test('All ${locale.name}', () {
        final names = BibleBooksHelper().allNames(locale: locale);
        expect(names.every((n) => n.value.isNotEmpty), isTrue);
      });

      for (var book in BibleBook.values) {
        test('${book.name} ${locale.name}', () {
          final name = BibleBooksHelper().getName(book, locale: locale);
          expect(name, isNotNull);
          expect(name, isNotEmpty);

          final key = BibleBooksHelper().getKeyForName(name!, locale: locale);
          expect(key == book, isTrue);
        });
      }
    }
  });

  group('Number', () {
    for (var locale in AppLocale.values) {
      for (var number in Number.values) {
        test('${number.name} ${locale.name}', () {
          final result = BibleBooksHelper().getNumber(number, locale: locale);
          expect(result, isNotNull);
          expect(result, isNotEmpty);
        });
      }
    }
  });
}
