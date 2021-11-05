class OnboardingStepFourStrings {
  static final OnboardingStepFourStrings _onboardingStepFourStrings =
      OnboardingStepFourStrings._internal();
  OnboardingStepFourStrings._internal();

  factory OnboardingStepFourStrings() {
    return _onboardingStepFourStrings;
  }
  String get titlePage => "E tem muito mais!";
  String get subtitlePageOne => "Recomendações de investimentos.";
  String get subtitlePageTwo => "Cursos do iniciante ao avançado.";
  String get subtitlePageThree => "Investa sabendo quanto pode ganhar.";
}
