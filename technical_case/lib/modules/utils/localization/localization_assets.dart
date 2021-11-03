import 'package:technical_case/modules/utils/localization/assets_types.dart';
import 'package:technical_case/modules/utils/localization/localization_peer_enum.dart';

class LocalizationAssetsSdk {
  static final LocalizationAssetsSdk _localizationAssetsSdk =
      LocalizationAssetsSdk._internal();
  LocalizationAssetsSdk._internal();

  factory LocalizationAssetsSdk() {
    return _localizationAssetsSdk;
  }
  String getAsset(AssetChosen asset) =>
      LocalizationPeerEnum().getPathAsset(asset);
}
