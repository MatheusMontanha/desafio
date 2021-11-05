import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:technical_case/modules/onboarding_module/onboarding_blocs/bloc.dart';

import 'onboarding_buttons_widget.dart';

class OnboardingPageWidget extends StatefulWidget {
  const OnboardingPageWidget({Key? key}) : super(key: key);

  @override
  _OnboardingPageWidgetState createState() => _OnboardingPageWidgetState();
}

class _OnboardingPageWidgetState extends State<OnboardingPageWidget> {
  List<Widget> steps = [];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          if (state is OnboardingLoadedWidgetsState) {
            steps = state.widgets;
          }
          if (state is OnboardingChangeIndexStepState) {
            activeIndex = state.newIndex;
          }
          return Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CarouselSlider(
                    items: [...steps],
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      height: MediaQuery.of(context).size.height * 0.6,
                      onPageChanged: (index, reason) {
                        BlocProvider.of<OnboardingBloc>(context)
                            .add(OnboardingChangeStep(index: index));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: buildIndicator(),
                  ),
                  const OnboardingButtonsWidget(),
                ],
              ),
            ),
          );
        },
      )),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: steps.length,
        effect: const JumpingDotEffect(
          dotWidth: 6,
          dotHeight: 6,
          dotColor: Colors.black38,
          activeDotColor: Colors.blue,
        ),
      );
}
