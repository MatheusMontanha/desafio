import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:technical_case/modules/onboarding_module/widgets/onboarding_step_two_widget.dart';
import 'package:technical_case/modules/utils/localization/localization.dart';

import 'onboarding_buttons_widget.dart';
import 'onboarding_last_step_widget.dart';
import 'onboarding_step_widget.dart';

class OnboardingPageWidget extends StatefulWidget {
  const OnboardingPageWidget({Key? key}) : super(key: key);

  @override
  _OnboardingPageWidgetState createState() => _OnboardingPageWidgetState();
}

class _OnboardingPageWidgetState extends State<OnboardingPageWidget> {
  final List<Widget> steps = [
    OnboardingStepWidget(
      title: LocalizationStrings().getOnboardingStepOneStrings().helloTitlePage,
      subtitle:
          LocalizationStrings().getOnboardingStepOneStrings().subtitlePage,
      pathAsset: LocalizationAssetsSdk().getAsset(AssetChosen.toroIntroStepOne),
    ),
    OnboardingStepTwoWidget(
      title: LocalizationStrings().getOnboardingStepTwoStrings().titlePage,
      subtitle:
          LocalizationStrings().getOnboardingStepTwoStrings().subtitlePage,
      pathAsset: LocalizationAssetsSdk().getAsset(AssetChosen.toroIntroStepTwo),
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
        LocalizationStrings().getOnboardingStepFourStrings().subtitlePageThree,
      ],
      pathAsset:
          LocalizationAssetsSdk().getAsset(AssetChosen.toroIntroStepFour),
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
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
                    setState(() {
                      activeIndex = index;
                    });
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
