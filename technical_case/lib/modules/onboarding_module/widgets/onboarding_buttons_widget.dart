import 'package:flutter/material.dart';
import 'package:technical_case/modules/widgets/widgets.dart';

class OnboardingButtonsWidget extends StatelessWidget {
  const OnboardingButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: const [
          DefaultButton(
            color: Colors.blue,
            labelColor: Colors.white,
            label: "Abra sua conta grátis",
          ),
          SizedBox(
            height: 10,
          ),
          DefaultButton(
            color: Colors.white,
            labelColor: Colors.blue,
            label: "Entrar",
          ),
        ],
      ),
    );
  }
}
