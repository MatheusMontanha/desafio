import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(OnboardingState initialState) : super(initialState);

  OnboardingState get initialState => InitialOnboardingState();

  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    if (event is OnboardingChangeStep) {
      yield OnboardingLoadingChangeStepState();
      yield OnboardingChangeIndexStepState(newIndex: event.index);
    }
  }
}
