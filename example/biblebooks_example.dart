import 'package:biblebooks/biblebooks.dart';

void main() {
  for (BibleBook book in BibleBook.values) {
    // Standard abbreviation
    print(BibleBooksHelper().getStandardAbbreviation(book));

    // Thompson abbreviation
    print(BibleBooksHelper().getThompsonAbbreviation(book));

    // OSIS code
    print(BibleBooksHelper().getOsisCode(book));

    // Paratext code
    print(BibleBooksHelper().getParatextCode(book));

    // Max chapter
    print(BibleBooksHelper().getMaxChapter(book));

    // Alternative book name
    print(BibleBooksHelper().getAlternativeNames(book));

    // Book name - default locale
    print(BibleBooksHelper().getName(book));

    // Book name - en locale
    print(BibleBooksHelper().getName(book, locale: AppLocale.en));

    // Book name - tgl locale
    print(BibleBooksHelper().getName(book, locale: AppLocale.tgl));
  }
}
