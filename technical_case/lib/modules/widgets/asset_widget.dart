import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technical_case/modules/utils/localization/assets_types.dart';
import 'package:technical_case/modules/utils/localization/localization.dart';
import 'package:technical_case/modules/utils/localization/localization_assets.dart';

class AssetWidget extends StatefulWidget {
  final double maxHeight;
  final AssetChosen assetChosen;
  final Alignment alignment;
  const AssetWidget({
    Key? key,
    required this.maxHeight,
    required this.assetChosen,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  State<AssetWidget> createState() => _AssetWidgetState();
}

class _AssetWidgetState extends State<AssetWidget> {
  int second = 2;
  late Timer timer;

  @override
  Widget build(BuildContext context) {
    timer = Timer.periodic(Duration(seconds: second), (timer) {
      if (second == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          second--;
        });
      }
    });
    return AnimatedCrossFade(
      firstCurve: Curves.easeOut,
      secondCurve: Curves.easeIn,
      sizeCurve: Curves.bounceOut,
      crossFadeState:
          second == 0 ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(microseconds: 500),
      firstChild: Center(
        child: Text(LocalizationStrings().getSplashscreenStrings().welcomeText,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            )),
      ),
      secondChild: Container(
        height: widget.maxHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: widget.alignment,
            image: AssetImage(
              LocalizationAssetsSdk().getAsset(widget.assetChosen),
            ),
          ),
        ),
      ),
    );
  }
}
