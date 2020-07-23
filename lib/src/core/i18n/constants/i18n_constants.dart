import 'dart:ui';

const String kLocaleStrEN = 'en_us';
const String kLocaleStrES = 'es_mx';
const String kLocaleStrPT = 'pt_br';

const Locale kLocaleEN = Locale('en', "US");
const Locale kLocaleES = Locale('es', "MX");
const Locale kLocalePT = Locale('pt', "BR");

const String kDefaultLocaleStr = 'en_us';
const Locale kDefaultLocale = Locale('en', "US");

const Iterable<Locale> kSupportedLocales = [
  kLocaleEN,
  kLocaleES,
  kLocalePT,
];
