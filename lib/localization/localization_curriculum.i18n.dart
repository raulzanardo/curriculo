import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byText("pt_br") +
      {
        "pt_br": "Sim",
        "en_us": "Yes",
      } +
      {
        "pt_br": "Não",
        "en_us": "No",
      } +
      {
        "pt_br": "Objetivo",
        "en_us": "Goal",
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
