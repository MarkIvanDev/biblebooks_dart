import 'package:biblebooks/biblebooks.dart';
import 'package:test/test.dart';

void main() {
  group('Chapter', () {
    test('All', () {
      final maxChapters = BibleBooksHelper().allMaxChapters();
      expect(maxChapters.every((c) => c.value != 0), isTrue);
    });

    for (var book in BibleBook.values) {
      test(book.name, () {
        final maxChapter = BibleBooksHelper().getMaxChapter(book);
        expect(maxChapter, isNotNull);
      });
    }
  });
}
