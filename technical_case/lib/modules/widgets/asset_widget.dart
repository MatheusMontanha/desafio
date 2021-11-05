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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.maxHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: widget.alignment,
          image: AssetImage(
            LocalizationAssetsSdk().getAsset(widget.assetChosen),
          ),
        ),
      ),
    );
  }
}
