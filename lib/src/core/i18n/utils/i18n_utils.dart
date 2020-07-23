import 'dart:ui';

import 'package:designsystem/src/core/i18n/constants/i18n_constants.dart';

Locale get getDeviceLocale =>
    Locale(window.locale.languageCode, window.locale.countryCode);

Locale getLocale(String localeStr) {
  switch (localeStr) {
    case kLocaleStrEN:
      return kLocaleEN;
    case kLocaleStrES:
      return kLocaleES;
    case kLocaleStrPT:
      return kLocalePT;
    default:
      return kDefaultLocale;
  }
}

String getLocaleStr(String languageCode) {
  if (languageCode != null) {
    if (languageCode.contains("en")) {
      return kLocaleStrEN;
    } else if (languageCode.contains("es")) {
      return kLocaleStrES;
    } else if (languageCode.contains("pt")) {
      return kLocaleStrPT;
    } else {
      return kDefaultLocaleStr;
    }
  } else {
    return kDefaultLocaleStr;
  }
}
