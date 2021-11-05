import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:technical_case/modules/onboarding_module/onboarding_blocs/bloc.dart';
import 'package:technical_case/modules/onboarding_module/widgets/onboarding_widget.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  MockNavigatorObserver _navigatorObserve = MockNavigatorObserver();

  group("Onboarding page tests", () {
    testWidgets("find onboarding page components", (widgetTester) async {
      await widgetTester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) => OnboardingBloc(InitialOnboardingState())
                ..add(const OnboardingInitialEvent()),
              child: const OnboardingPageWidget()),
          navigatorObservers: [_navigatorObserve],
        ),
      );
      await widgetTester.pumpAndSettle();
      final finderStepsKey = find.byKey(
        const Key("onboarding_widget_steps_key"),
      );
      final finderCarouselWidget =
          widgetTester.widget(finderStepsKey) as CarouselSlider;
      expect(finderCarouselWidget.items?.length, 4);
    });
  });
}
