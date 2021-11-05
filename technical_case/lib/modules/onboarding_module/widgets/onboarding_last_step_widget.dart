import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingLastStepWidget extends StatelessWidget {
  final String pathAsset;
  final String title;
  final List<String> topics;
  const OnboardingLastStepWidget({
    Key? key,
    required this.pathAsset,
    required this.title,
    required this.topics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 30,
              ),
              SvgPicture.asset(
                pathAsset,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              getRowWithText(topics[0]),
              getRowWithText(topics[1]),
              getRowWithText(topics[2]),
            ],
          ),
        ),
      ),
    );
  }

  Widget getRowWithText(String text) {
    return Row(
      children: [
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
