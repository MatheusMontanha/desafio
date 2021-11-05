import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_case/modules/onboarding_module/onboarding_blocs/bloc.dart';

import 'onboarding_widget.dart';

OnboardingBloc _onboardingBloc = OnboardingBloc(
  InitialOnboardingState(),
);

class OnboardingRouteWidget extends StatefulWidget {
  const OnboardingRouteWidget({Key? key}) : super(key: key);

  @override
  State<OnboardingRouteWidget> createState() => _OnboardingRouteWidgetState();
}

class _OnboardingRouteWidgetState extends State<OnboardingRouteWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _onboardingBloc..add(const OnboardingInitialEvent()),
      child: const OnboardingPageWidget(),
    );
  }
}
