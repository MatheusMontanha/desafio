class LoginStrings {
  static final LoginStrings _loginStrings = LoginStrings._internal();
  LoginStrings._internal();

  factory LoginStrings() {
    return _loginStrings;
  }
  String get titleFirstPartLoginPage => "O jeito mais fácil de ";
  String get titleSecondPartLoginPage => "investir ";
  String get titleThirdPartLoginPage => "na Bolsa.";
  String get titleTextFormFieldEmail => "E-mail ou CPF:";
  String get titleTextFormFieldPassword => "Senha:";
}
