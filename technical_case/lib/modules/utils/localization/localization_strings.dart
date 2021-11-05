import 'package:technical_case/modules/utils/localization/splash_screen_strings.dart';

import 'login_strings.dart';
import 'onboarding_strings/onboarding.dart';
import 'onboarding_strings/onboarding_step_four_strings.dart';

class LocalizationStrings {
  static final LocalizationStrings _localizationStrings =
      LocalizationStrings._internal();
  LocalizationStrings._internal();

  factory LocalizationStrings() {
    return _localizationStrings;
  }
  LoginStrings getLoginStrings() => LoginStrings();
  OnboardingStepOneStrings getOnboardingStepOneStrings() =>
      OnboardingStepOneStrings();
  OnboardingStepTwoStrings getOnboardingStepTwoStrings() =>
      OnboardingStepTwoStrings();

  OnboardingStepThreeStrings getOnboardingStepThreeStrings() =>
      OnboardingStepThreeStrings();
  OnboardingStepFourStrings getOnboardingStepFourStrings() =>
      OnboardingStepFourStrings();

  SplashscreenStrings getSplashscreenStrings() => SplashscreenStrings();
}
