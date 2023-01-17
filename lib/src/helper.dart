import 'i18n/strings.g.dart';

/// Helper class to retrieve a bible book's info.
class BibleBooksHelper {
  const BibleBooksHelper._();
  static const BibleBooksHelper _instance = BibleBooksHelper._();

  factory BibleBooksHelper() => _instance;

  /// Returns the localized names of all the books of the bible.
  Iterable<MapEntry<BibleBook, String>> allNames(
      {AppLocale locale = AppLocale.en}) sync* {
    final books = locale.build().books;
    yield* BibleBook.values.map((e) => MapEntry(e, books[e.name] ?? ''));
  }

  /// Returns the alternative names of all the books of the bible.
  Iterable<MapEntry<BibleBook, List<String>>> allAlternativeNames(
      {AppLocale locale = AppLocale.en}) sync* {
    final alternative = locale.build().alternative;
    yield* BibleBook.values
        .map((e) => MapEntry(e, alternative[e.name] ?? const []));
  }

  /// Returns the OSIS codes of all the books of the bible.
  Iterable<MapEntry<BibleBook, String>> allOsisCodes(
      {AppLocale locale = AppLocale.en}) sync* {
    final osis = locale.build().osis;
    yield* BibleBook.values.map((e) => MapEntry(e, osis[e.name] ?? ''));
  }

  /// Returns the Paratext codes of all the books of the bible.
  Iterable<MapEntry<BibleBook, String>> allParatextCodes(
      {AppLocale locale = AppLocale.en}) sync* {
    final paratext = locale.build().paratext;
    yield* BibleBook.values.map((e) => MapEntry(e, paratext[e.name] ?? ''));
  }

  /// Returns the Standard abbreviations of all the books of the bible.
  Iterable<MapEntry<BibleBook, String>> allStandardAbbreviations(
      {AppLocale locale = AppLocale.en}) sync* {
    final standard = locale.build().standard;
    yield* BibleBook.values.map((e) => MapEntry(e, standard[e.name] ?? ''));
  }

  /// Returns the Thompson abbreviations of all the books of the bible.
  Iterable<MapEntry<BibleBook, String>> allThompsonAbbreviations(
      {AppLocale locale = AppLocale.en}) sync* {
    final thompson = locale.build().thompson;
    yield* BibleBook.values.map((e) => MapEntry(e, thompson[e.name] ?? ''));
  }

  /// Returns the max chapters of all the books of the bible.
  Iterable<MapEntry<BibleBook, int>> allMaxChapters(
      {AppLocale locale = AppLocale.en}) sync* {
    final chapters = locale.build().chapters;
    yield* BibleBook.values
        .map((e) => MapEntry(e, int.tryParse(chapters[e.name] ?? '') ?? 0));
  }

  /// Returns the max chapter of a book.
  int? getMaxChapter(BibleBook book) {
    return int.tryParse(AppLocale.en.build().chapters[book.name] ?? '');
  }

  /// Returns the localized text of a number.
  String? getNumber(Number number, {AppLocale locale = AppLocale.en}) {
    return locale.build().numbers[number.name];
  }

  /// Returns the localized name of a book.
  String? getName(BibleBook book, {AppLocale locale = AppLocale.en}) {
    return locale.build().books[book.name];
  }

  /// Returns the [BibleBook] for a given localized name.
  BibleBook? getKeyForName(String name, {AppLocale locale = AppLocale.en}) {
    for (var item in allNames(locale: locale)) {
      if (item.value.toLowerCase() == name.trim().toLowerCase()) {
        return item.key;
      }
    }
    return null;
  }

  /// Returns the alternative name of a book.
  List<String> getAlternativeNames(BibleBook book,
      {AppLocale locale = AppLocale.en}) {
    return locale.build().alternative[book.name] ?? const <String>[];
  }

  /// Returns the [BibleBook] for a given alternative name.
  BibleBook? getKeyForAlternativeName(String alternativeName,
      {AppLocale locale = AppLocale.en}) {
    for (var item in allAlternativeNames(locale: locale)) {
      if (item.value.any(
          (e) => e.toLowerCase() == alternativeName.trim().toLowerCase())) {
        return item.key;
      }
    }
    return null;
  }

  /// Returns the OSIS code of a book.
  String? getOsisCode(BibleBook book, {AppLocale locale = AppLocale.en}) {
    return locale.build().osis[book.name];
  }

  /// Returns the [BibleBook] for a given OSIS code.
  BibleBook? getKeyForOsisCode(String code, {AppLocale locale = AppLocale.en}) {
    for (var item in allOsisCodes(locale: locale)) {
      if (item.value.toLowerCase() == code.trim().toLowerCase()) {
        return item.key;
      }
    }
    return null;
  }

  /// Returns the Paratext code of a book.
  String? getParatextCode(BibleBook book, {AppLocale locale = AppLocale.en}) {
    return locale.build().paratext[book.name];
  }

  /// Returns the [BibleBook] for a given Paratext code.
  BibleBook? getKeyForParatextCode(String code,
      {AppLocale locale = AppLocale.en}) {
    for (var item in allParatextCodes(locale: locale)) {
      if (item.value.toLowerCase() == code.trim().toLowerCase()) {
        return item.key;
      }
    }
    return null;
  }

  /// Returns the Standard abbreviation of a book.
  String? getStandardAbbreviation(BibleBook book,
      {AppLocale locale = AppLocale.en}) {
    return locale.build().standard[book.name];
  }

  /// Returns the [BibleBook] for a given Standard abbreviation.
  BibleBook? getKeyForStandardAbbreviation(String standard,
      {AppLocale locale = AppLocale.en}) {
    for (var item in allStandardAbbreviations(locale: locale)) {
      if (item.value.toLowerCase() == standard.trim().toLowerCase()) {
        return item.key;
      }
    }
    return null;
  }

  /// Returns the Thompson abbreviation of a book.
  String? getThompsonAbbreviation(BibleBook book,
      {AppLocale locale = AppLocale.en}) {
    return locale.build().thompson[book.name];
  }

  /// Returns the [BibleBook] for a given Thompson abbreviation.
  BibleBook? getKeyForThompsonAbbreviation(String thompson,
      {AppLocale locale = AppLocale.en}) {
    for (var item in allThompsonAbbreviations(locale: locale)) {
      if (item.value.toLowerCase() == thompson.trim().toLowerCase()) {
        return item.key;
      }
    }
    return null;
  }
}

/// The books of the bible.
enum BibleBook {
  genesis(1),
  exodus(2),
  leviticus(3),
  numbers(4),
  deuteronomy(5),
  joshua(6),
  judges(7),
  ruth(8),
  samuel1(9),
  samuel2(10),
  kings1(11),
  kings2(12),
  chronicles1(13),
  chronicles2(14),
  ezra(15),
  nehemiah(16),
  esther(17),
  job(18),
  psalms(19),
  proverbs(20),
  ecclesiastes(21),
  songOfSongs(22),
  isaiah(23),
  jeremiah(24),
  lamentations(25),
  ezekiel(26),
  daniel(27),
  hosea(28),
  joel(29),
  amos(30),
  obadiah(31),
  jonah(32),
  micah(33),
  nahum(34),
  habakkuk(35),
  zephaniah(36),
  haggai(37),
  zechariah(38),
  malachi(39),
  matthew(40),
  mark(41),
  luke(42),
  john(43),
  acts(44),
  romans(45),
  corinthians1(46),
  corinthians2(47),
  galatians(48),
  ephesians(49),
  philippians(50),
  colossians(51),
  thessalonians1(52),
  thessalonians2(53),
  timothy1(54),
  timothy2(55),
  titus(56),
  philemon(57),
  hebrews(58),
  james(59),
  peter1(60),
  peter2(61),
  john1(62),
  john2(63),
  john3(64),
  jude(65),
  revelation(66);

  /// Order of the bible book. 1-39 for the old testament books and 40-66 for the new testament books.
  final int order;
  const BibleBook(this.order);

  /// Returns the [BibleBook] with the specified order or throws an [ArgumentError] if the order is invalid.
  factory BibleBook.fromOrder(int order) {
    switch (order) {
      case 1:
        return BibleBook.genesis;
      case 2:
        return BibleBook.exodus;
      case 3:
        return BibleBook.leviticus;
      case 4:
        return BibleBook.numbers;
      case 5:
        return BibleBook.deuteronomy;
      case 6:
        return BibleBook.joshua;
      case 7:
        return BibleBook.judges;
      case 8:
        return BibleBook.ruth;
      case 9:
        return BibleBook.samuel1;
      case 10:
        return BibleBook.samuel2;
      case 11:
        return BibleBook.kings1;
      case 12:
        return BibleBook.kings2;
      case 13:
        return BibleBook.chronicles1;
      case 14:
        return BibleBook.chronicles2;
      case 15:
        return BibleBook.ezra;
      case 16:
        return BibleBook.nehemiah;
      case 17:
        return BibleBook.esther;
      case 18:
        return BibleBook.job;
      case 19:
        return BibleBook.psalms;
      case 20:
        return BibleBook.proverbs;
      case 21:
        return BibleBook.ecclesiastes;
      case 22:
        return BibleBook.songOfSongs;
      case 23:
        return BibleBook.isaiah;
      case 24:
        return BibleBook.jeremiah;
      case 25:
        return BibleBook.lamentations;
      case 26:
        return BibleBook.ezekiel;
      case 27:
        return BibleBook.daniel;
      case 28:
        return BibleBook.hosea;
      case 29:
        return BibleBook.joel;
      case 30:
        return BibleBook.amos;
      case 31:
        return BibleBook.obadiah;
      case 32:
        return BibleBook.jonah;
      case 33:
        return BibleBook.micah;
      case 34:
        return BibleBook.nahum;
      case 35:
        return BibleBook.habakkuk;
      case 36:
        return BibleBook.zephaniah;
      case 37:
        return BibleBook.haggai;
      case 38:
        return BibleBook.zechariah;
      case 39:
        return BibleBook.malachi;
      case 40:
        return BibleBook.matthew;
      case 41:
        return BibleBook.mark;
      case 42:
        return BibleBook.luke;
      case 43:
        return BibleBook.john;
      case 44:
        return BibleBook.acts;
      case 45:
        return BibleBook.romans;
      case 46:
        return BibleBook.corinthians1;
      case 47:
        return BibleBook.corinthians2;
      case 48:
        return BibleBook.galatians;
      case 49:
        return BibleBook.ephesians;
      case 50:
        return BibleBook.philippians;
      case 51:
        return BibleBook.colossians;
      case 52:
        return BibleBook.thessalonians1;
      case 53:
        return BibleBook.thessalonians2;
      case 54:
        return BibleBook.timothy1;
      case 55:
        return BibleBook.timothy2;
      case 56:
        return BibleBook.titus;
      case 57:
        return BibleBook.philemon;
      case 58:
        return BibleBook.hebrews;
      case 59:
        return BibleBook.james;
      case 60:
        return BibleBook.peter1;
      case 61:
        return BibleBook.peter2;
      case 62:
        return BibleBook.john1;
      case 63:
        return BibleBook.john2;
      case 64:
        return BibleBook.john3;
      case 65:
        return BibleBook.jude;
      case 66:
        return BibleBook.revelation;
      default:
        throw ArgumentError.value(order);
    }
  }
}

/// The numbers used by the books of the bible.
enum Number {
  first(1),
  second(2),
  third(3),
  fourth(4),
  fifth(5);

  final int order;
  const Number(this.order);
}
