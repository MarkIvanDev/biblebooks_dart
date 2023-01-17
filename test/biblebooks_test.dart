import 'package:biblebooks/biblebooks.dart';
import 'package:test/test.dart';

void main() {
  final helper = BibleBooksHelper();

  group('Abbreviations', () {
    test('Standard', () {
      for (var book in BibleBook.values) {
        expect(helper.getStandardAbbreviation(book), isNotNull);
      }
    });

    test('Thompson', () {
      for (var book in BibleBook.values) {
        expect(helper.getThompsonAbbreviation(book), isNotNull);
      }
    });
  });

  group('Codes', () {
    test('OSIS', () {
      for (var book in BibleBook.values) {
        expect(helper.getOsisCode(book), isNotNull);
      }
    });

    test('Paratext', () {
      for (var book in BibleBook.values) {
        expect(helper.getParatextCode(book), isNotNull);
      }
    });
  });

  group('Metadata', () {
    test('Max Chapters', () {
      for (var book in BibleBook.values) {
        expect(helper.getMaxChapter(book), isNotNull);
      }
    });
  });

  group('Book names', () {
    test('English Book Names', () {
      for (var book in BibleBook.values) {
        expect(helper.getName(book, locale: AppLocale.en), isNotNull);
      }
    });

    test('Tagalog Book Names', () {
      for (var book in BibleBook.values) {
        expect(helper.getName(book, locale: AppLocale.tgl), isNotNull);
      }
    });

    test('Alternative Book Names', () {
      for (var book in BibleBook.values) {
        expect(helper.getAlternativeNames(book), isNotNull);
      }
    });

    test('Numbers', () {
      for (var number in Number.values) {
        expect(helper.getNumber(number), isNotNull);
      }
    });
  });

  group('Get Key', () {
    test('Get Key for Name', () {
      for (var book in BibleBook.values) {
        final name = BibleBooksHelper().getName(book) ?? '';
        expect(BibleBooksHelper().getKeyForName(name), book);
      }
    });

    test('Get Key for OSIS code', () {
      for (var book in BibleBook.values) {
        final osis = BibleBooksHelper().getOsisCode(book) ?? '';
        expect(BibleBooksHelper().getKeyForOsisCode(osis), book);
      }
    });

    test('Get Key for Paratext code', () {
      for (var book in BibleBook.values) {
        final paratext = BibleBooksHelper().getParatextCode(book) ?? '';
        expect(BibleBooksHelper().getKeyForParatextCode(paratext), book);
      }
    });

    test('Get Key for Standard abbreviation', () {
      for (var book in BibleBook.values) {
        final standard = BibleBooksHelper().getStandardAbbreviation(book) ?? '';
        expect(
            BibleBooksHelper().getKeyForStandardAbbreviation(standard), book);
      }
    });

    test('Get Key for Thompson abbreviation', () {
      for (var book in BibleBook.values) {
        final thompson = BibleBooksHelper().getThompsonAbbreviation(book) ?? '';
        expect(
            BibleBooksHelper().getKeyForThompsonAbbreviation(thompson), book);
      }
    });
  });
}
