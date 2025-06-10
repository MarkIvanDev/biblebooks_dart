///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsTgl extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTgl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tgl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <tgl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsTgl _root = this; // ignore: unused_field

	@override 
	TranslationsTgl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTgl(meta: meta ?? this.$meta);

	// Translations
	@override Map<String, List<String>> get alternative => {
		'genesis': [
		],
		'exodus': [
		],
		'leviticus': [
		],
		'numbers': [
		],
		'deuteronomy': [
		],
		'joshua': [
		],
		'judges': [
			'Hukom',
		],
		'ruth': [
		],
		'samuel1': [
		],
		'samuel2': [
		],
		'kings1': [
			'1 Hari',
		],
		'kings2': [
			'2 Hari',
		],
		'chronicles1': [
			'1 Cronica',
		],
		'chronicles2': [
			'2 Cronica',
		],
		'ezra': [
		],
		'nehemiah': [
		],
		'esther': [
		],
		'job': [
		],
		'psalms': [
			'Awit',
		],
		'proverbs': [
			'Kawikaan',
		],
		'ecclesiastes': [
			'Mangangaral',
		],
		'songOfSongs': [
			'Song of Solomon',
		],
		'isaiah': [
		],
		'jeremiah': [
		],
		'lamentations': [
			'Panaghoy',
		],
		'ezekiel': [
		],
		'daniel': [
		],
		'hosea': [
		],
		'joel': [
		],
		'amos': [
		],
		'obadiah': [
		],
		'jonah': [
		],
		'micah': [
		],
		'nahum': [
		],
		'habakkuk': [
		],
		'zephaniah': [
		],
		'haggai': [
		],
		'zechariah': [
		],
		'malachi': [
		],
		'matthew': [
			'Ang Ebanghelyo Ayon Kay Mateo',
		],
		'mark': [
			'Ang Ebanghelyo Ayon Kay Marcos',
		],
		'luke': [
			'Ang Ebanghelyo Ayon Kay Lucas',
		],
		'john': [
			'Ang Ebanghelyo Ayon Kay Juan',
		],
		'acts': [
			'Ang Mga Gawa ng mga Apostol',
			'Mga Gawa',
		],
		'romans': [
			'Ang Sulat ni Apostol Pablo sa mga Taga-Roma',
			'Mga Taga-Roma',
		],
		'corinthians1': [
			'Ang Unang Sulat ni Apostol Pablo sa mga Taga-Corinto',
			'1 Mga Taga-Corinto',
		],
		'corinthians2': [
			'Ang Ikalawang Sulat ni Apostol Pablo sa mga Taga-Corinto',
			'2 Mga Taga-Corinto',
		],
		'galatians': [
			'Ang Sulat ni Apostol Pablo sa mga Taga-Galacia',
			'Mga Taga-Galacia',
		],
		'ephesians': [
			'Ang Sulat ni Apostol Pablo sa mga Taga-Efeso',
			'Mga Taga-Efeso',
		],
		'philippians': [
			'Ang Sulat ni Apostol Pablo sa mga Taga-Filipos',
			'Mga Taga-Filipos',
		],
		'colossians': [
			'Mga Sulat ni Apostol Pablo sa mga Taga-Colosas',
			'Mga Taga-Colosas',
		],
		'thessalonians1': [
			'Ang Unang Sulat ni Apostol Pablo sa mga Taga-Tesalonica',
			'1 Mga Taga-Tesalonica',
		],
		'thessalonians2': [
			'Ang Ikalawang Sulat ni Apostol Pablo sa mga Taga-Tesalonica',
			'2 Mga Taga-Tesalonica',
		],
		'timothy1': [
			'Ang Unang Sulat ni Apostol Pablo kay Timoteo',
			'1 Kay Timoteo',
		],
		'timothy2': [
			'Ang Ikalawang Sulat ni Apostol Pablo kay Timoteo',
			'2 Kay Timoteo',
		],
		'titus': [
			'Ang Sulat ni Apostol Pablo kay Tito',
			'Kay Tito',
		],
		'philemon': [
			'Ang Sulat ni Apostol Pablo kay Filemon',
			'Kay Filemon',
		],
		'hebrews': [
			'Ang Sulat sa mga Hebreo',
		],
		'james': [
			'Ang Sulat ni Santiago',
		],
		'peter1': [
			'Ang Unang Sulat ni Pedro',
		],
		'peter2': [
			'Ang Ikalawang Sulat ni Pedro',
		],
		'john1': [
			'Ang Unang Sulat ni Juan',
		],
		'john2': [
			'Ang Ikalawang Sulat ni Juan',
		],
		'john3': [
			'Ang Ikatlong Sulat ni Juan',
		],
		'jude': [
			'Ang Sulat ni Judas',
		],
		'revelation': [
			'Ang Pahayag kay Juan',
		],
	};
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
