import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_case/modules/onboarding_module/onboarding_blocs/bloc.dart';

import 'onboarding_widget.dart';

class OnboardingRouteWidget extends StatelessWidget {
  const OnboardingRouteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingBloc(
        InitialOnboardingState(),
      )..add(const OnboardingInitialEvent()),
      child: const OnboardingPageWidget(),
    );
  }
}
