import 'package:technical_case/modules/utils/localization/assets_types.dart';

const pathBaseAsset = "assets/";

class LocalizationPeerEnum {
  String getPathAsset(AssetChosen asset) {
    switch (asset) {
      case AssetChosen.toroLogo:
        return "${pathBaseAsset}logo-icon.png";
      case AssetChosen.toroLogoWithName:
        return "${pathBaseAsset}logo-transparent.png";
      case AssetChosen.toroIntroStepOne:
        return "${pathBaseAsset}step1.svg";
      case AssetChosen.toroIntroStepTwo:
        return "${pathBaseAsset}step2.svg";
      case AssetChosen.toroIntroStepThree:
        return "${pathBaseAsset}step3.svg";
      case AssetChosen.toroIntroStepFour:
        return "${pathBaseAsset}step4.svg";
      default:
        return "";
    }
  }
}
