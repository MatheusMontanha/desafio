import 'package:technical_case/modules/utils/localization/assets_types.dart';

const pathBaseAsset = "assets/";

class LocalizationPeerEnum {
  String getPathAsset(AssetChosen asset) {
    switch (asset) {
      case AssetChosen.toroLogo:
        return "${pathBaseAsset}logo-icon.png";
      case AssetChosen.toroLogoWithName:
        return "${pathBaseAsset}logo-transparent.png";
      default:
        return "";
    }
  }
}
