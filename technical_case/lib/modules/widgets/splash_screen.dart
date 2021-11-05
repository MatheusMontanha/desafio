import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technical_case/modules/router/routes.dart';
import 'package:technical_case/modules/utils/localization/assets_types.dart';

import 'asset_widget.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () async {
        await Navigator.pushNamed(context, onboardingRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: const AssetWidget(
            maxHeight: 100,
            assetChosen: AssetChosen.toroLogo,
          ),
        ),
      ),
    );
  }
}
