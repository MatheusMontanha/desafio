import 'package:flutter/widgets.dart';
import 'package:technical_case/modules/utils/localization/assets_types.dart';
import 'package:technical_case/modules/utils/localization/localization_assets.dart';

class AssetWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      height: maxHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: alignment,
          image: AssetImage(
            LocalizationAssetsSdk().getAsset(assetChosen),
          ),
        ),
      ),
    );
  }
}
