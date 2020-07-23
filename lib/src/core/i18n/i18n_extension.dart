import 'package:designsystem/src/core/i18n/translations/i18n_translations.dart';
import 'package:designsystem/src/core/storage/storage.dart';

extension InternationalizationExtesntion on String {
  String i18n({String lang = ""}) {
    final String _languageCode =
        (lang == null || lang.isEmpty) ? Settings.getLocaleKey() : lang;

    final Map<String, Map<String, String>> dic = {
      "en_us": enUS,
      "es_mx": esMX,
      "pt_br": ptBR,
    };

    return dic[_languageCode][this];
  }
}
