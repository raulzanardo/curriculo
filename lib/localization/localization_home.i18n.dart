import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byText("pt_br") +
      {
        "pt_br": "Currículo",
        "en_us": "Curriculum",
      } +
      {
        "pt_br": "Portfólio",
        "en_us": "Portfolio",
      } +
      {
        "pt_br": "Sobre",
        "en_us": "About",
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
