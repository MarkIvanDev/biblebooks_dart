import 'package:biblebooks/biblebooks.dart';
import 'package:test/test.dart';

void main() {
  group('Standard', () {
    group('Sync', () {
      for (var locale in AppLocale.values) {
        test('All ${locale.name}', () {
          expect(
              BibleBooksHelper()
                  .allStandardAbbreviations(locale: locale)
                  .every((e) => e.value.isNotEmpty),
              isTrue);
        });

        for (var book in BibleBook.values) {
          test('${locale.name} ${book.name}', () {
            final standard = BibleBooksHelper()
                .getStandardAbbreviation(book, locale: locale);
            expect(standard != null && standard.isNotEmpty, isTrue);

            final key = BibleBooksHelper()
                .getKeyForStandardAbbreviation(standard!, locale: locale);
            expect(key == book, isTrue);
          });
        }
      }
    });
  });

  group('Thompson', () {
    group('Sync', () {
      for (var locale in AppLocale.values) {
        test('All ${locale.name}', () {
          expect(
              BibleBooksHelper()
                  .allThompsonAbbreviations(locale: locale)
                  .every((e) => e.value.isNotEmpty),
              isTrue);
        });

        for (var book in BibleBook.values) {
          test('${locale.name} ${book.name}', () {
            final thompson = BibleBooksHelper()
                .getThompsonAbbreviation(book, locale: locale);
            expect(thompson != null && thompson.isNotEmpty, isTrue);

            final key = BibleBooksHelper()
                .getKeyForThompsonAbbreviation(thompson!, locale: locale);
            expect(key == book, isTrue);
          });
        }
      }
    });
  });
}
