part of 'strings.g.dart';

// Path: <root>
class _StringsTgl extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTgl.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tgl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <tgl>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	@override late final _StringsTgl _root = this; // ignore: unused_field

	// Translations
	@override Map<String, String> get books => {
		'genesis': 'Genesis',
		'exodus': 'Exodo',
		'leviticus': 'Levitico',
		'numbers': 'Mga Bilang',
		'deuteronomy': 'Deuteronomio',
		'joshua': 'Josue',
		'judges': 'Mga Hukom',
		'ruth': 'Ruth',
		'samuel1': '1 Samuel',
		'samuel2': '2 Samuel',
		'kings1': '1 Mga Hari',
		'kings2': '2 Mga Hari',
		'chronicles1': '1 Mga Cronica',
		'chronicles2': '2 Mga Cronica',
		'ezra': 'Esdras',
		'nehemiah': 'Nehemias',
		'esther': 'Ester',
		'job': 'Job',
		'psalms': 'Mga Awit',
		'proverbs': 'Mga Kawikaan',
		'ecclesiastes': 'Ang Mangangaral',
		'songOfSongs': 'Ang Awit ni Solomon',
		'isaiah': 'Isaias',
		'jeremiah': 'Jeremias',
		'lamentations': 'Mga Panaghoy',
		'ezekiel': 'Ezekiel',
		'daniel': 'Daniel',
		'hosea': 'Oseas',
		'joel': 'Joel',
		'amos': 'Amos',
		'obadiah': 'Obadias',
		'jonah': 'Jonas',
		'micah': 'Mikas',
		'nahum': 'Nahum',
		'habakkuk': 'Habacuc',
		'zephaniah': 'Sofonias',
		'haggai': 'Ageo',
		'zechariah': 'Zacarias',
		'malachi': 'Malakias',
		'matthew': 'Mateo',
		'mark': 'Marcos',
		'luke': 'Lucas',
		'john': 'Juan',
		'acts': 'Gawa',
		'romans': 'Roma',
		'corinthians1': '1 Corinto',
		'corinthians2': '2 Corinto',
		'galatians': 'Galacia',
		'ephesians': 'Efeso',
		'philippians': 'Filipos',
		'colossians': 'Colosas',
		'thessalonians1': '1 Tesalonica',
		'thessalonians2': '2 Tesalonica',
		'timothy1': '1 Timoteo',
		'timothy2': '2 Timoteo',
		'titus': 'Tito',
		'philemon': 'Filemon',
		'hebrews': 'Hebreo',
		'james': 'Santiago',
		'peter1': '1 Pedro',
		'peter2': '2 Pedro',
		'john1': '1 Juan',
		'john2': '2 Juan',
		'john3': '3 Juan',
		'jude': 'Judas',
		'revelation': 'Pahayag',
	};
}
