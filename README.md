# biblebooks
A dart library to get info about bible books.

It supports Standard & Thompson abbreviations, OSIS & Paratext codes, max chapters, alternative names, and localized names.

## Getting started

[Install](https://pub.dev/packages/biblebooks/install) the `biblebooks` package:

```yaml
dependencies:
  biblebooks: ^1.0.0
```

Then you can import it in your Dart code:

```dart
import 'package:biblebooks/biblebooks.dart';
```

## Features

### Supported bible book info:
- Book name
- Alternative book name
- OSIS code
- Paratext code
- Standard abbreviation
- Thompson abbreviation
- Max chapter

### Supported Locales
- English: `AppLocale.en`
- Tagalog: `AppLocale.tgl`

## Usage

You can use the `BibleBooksHelper()` singleton to retrieve the book's info.

```dart
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
  
  // Alternative book names
  print(BibleBooksHelper().getAlternativeNames(book));
  
  // Book name - default locale
  print(BibleBooksHelper().getName(book));
  
  // Book name - en locale
  print(BibleBooksHelper().getName(book, locale: AppLocale.en));
  
  // Book name - tgl locale
  print(BibleBooksHelper().getName(book, locale: AppLocale.tgl));
}
```

## Support
If you like my work and want to support me, buying me a coffee would be awesome! Thanks for your support!

<a href="https://www.buymeacoffee.com/markivandev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

---------
**Mark Ivan Basto** &bullet; **GitHub**
**[@MarkIvanDev](https://github.com/MarkIvanDev)** &bullet; **Twitter**
**[@Rivolvan_Speaks](https://twitter.com/Rivolvan_Speaks)**