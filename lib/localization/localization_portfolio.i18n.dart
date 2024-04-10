import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byText("pt_br") +
      {
        "pt_br": "",
        "en_us": "Yes",
      } +
      {
        "pt_br": "Aplicativo utilizado para parametrizar e controlar robôs de Paletização",
        "en_us": "Application used to parameterize and control palletizing robots",
      } +
      {
        "pt_br": "",
        "en_us": "",
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
