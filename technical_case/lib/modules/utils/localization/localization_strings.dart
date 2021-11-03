import 'login_strings.dart';

class LocalizationStrings {
  static final LocalizationStrings _localizationStrings =
      LocalizationStrings._internal();
  LocalizationStrings._internal();

  factory LocalizationStrings() {
    return _localizationStrings;
  }
  LoginStrings getLoginStrings() => LoginStrings();
}
