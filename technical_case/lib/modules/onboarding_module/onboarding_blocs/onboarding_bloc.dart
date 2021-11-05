import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_case/modules/onboarding_module/onboarding_repository/onboarding_repository.dart';
import 'package:technical_case/modules/onboarding_module/widgets/onboarding.dart';
import 'package:technical_case/modules/utils/localization/localization.dart';

import 'bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  
  OnboardingBloc(OnboardingState initialState) : super(initialState);

  OnboardingState get initialState => InitialOnboardingState();
final OnboardingRepository repository = OnboardingRepository();
  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    if (event is OnboardingInitialEvent) {
      yield OnboardingLoadedWidgetsState(widgets: getStepsOnboarding());
    }
    if (event is OnboardingChangeStep) {
      yield OnboardingLoadingChangeStepState();
      yield OnboardingChangeIndexStepState(newIndex: event.index);
    }
  }

  List<Widget> getStepsOnboarding() {
    final List<Widget> steps = [
      OnboardingStepWidget(
        title:
            LocalizationStrings().getOnboardingStepOneStrings().helloTitlePage,
        subtitle:
            LocalizationStrings().getOnboardingStepOneStrings().subtitlePage,
        pathAsset:
            LocalizationAssetsSdk().getAsset(AssetChosen.toroIntroStepOne),
      ),
      OnboardingStepTwoWidget(
        title: LocalizationStrings().getOnboardingStepTwoStrings().titlePage,
        subtitle:
            LocalizationStrings().getOnboardingStepTwoStrings().subtitlePage,
        pathAsset:
            LocalizationAssetsSdk().getAsset(AssetChosen.toroIntroStepTwo),
      ),
      OnboardingStepTwoWidget(
        title: LocalizationStrings().getOnboardingStepThreeStrings().titlePage,
        subtitle:
            LocalizationStrings().getOnboardingStepThreeStrings().subtitlePage,
        pathAsset:
            LocalizationAssetsSdk().getAsset(AssetChosen.toroIntroStepThree),
      ),
      OnboardingLastStepWidget(
        title: LocalizationStrings().getOnboardingStepFourStrings().titlePage,
        topics: [
          LocalizationStrings().getOnboardingStepFourStrings().subtitlePageOne,
          LocalizationStrings().getOnboardingStepFourStrings().subtitlePageTwo,
          LocalizationStrings()
              .getOnboardingStepFourStrings()
              .subtitlePageThree,
        ],
        pathAsset:
            LocalizationAssetsSdk().getAsset(AssetChosen.toroIntroStepFour),
      ),
    ];
    return steps;
  }
}
