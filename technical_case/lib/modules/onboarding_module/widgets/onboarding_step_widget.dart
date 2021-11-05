import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingStepWidget extends StatelessWidget {
  final String pathAsset;
  final String title;
  final String? subtitle;
  final List<String>? topics;
  const OnboardingStepWidget({
    Key? key,
    required this.pathAsset,
    required this.title,
    this.subtitle,
    this.topics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
            children: [
              const Spacer(),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  subtitle!,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(
                  pathAsset,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
