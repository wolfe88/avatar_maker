import "package:avatar_maker/src/core/models/property_item.dart";

/// List of all the hair colors displayed by default.
enum HairColors implements PropertyItem {
  Auburn("#A55728"),
  Black("#2C1B18"),
  Blonde("#B58143"),
  BlondeGolden("#D6B370"),
  Brown("#724133"),
  BrownDark("#4A312C"),
  PastelPink("#F59797"),
  Platinum("#ECDCBF"),
  Red("#C93305"),
  SilverGray("#E8E1E1"),
  DarkGray("#212121"),
  LightGray("#78909C"),
  Purple("#8E24AA"),
  Fuchsia("#D81B60"),
  Blue("#0277BD"),
  Green("#1B5E20"),
  DullGray("#B3B3B3"),
  SubduedGray("#7C7C7C"),
  MutedDarkGray("#323232"),
  DustyPurple("#8A5082"),
  MutedVividViolet("#9B7BCC"),
  DullUltramarineBlue("#6457A6"),
  DustyRoyalPurple("#6C4B93"),
  MellowHotPink("#CF5679"),
  WatermelonRed("#E76A7A"),
  DeepRed("#B23A48"),
  SubduedBurgundy("#70323C"),
  WarmBrickRed("#97423B"),
  WarmAmber("#AB6A35"),
  SoftTangerine("#F88132"),
  SoftCoralOrange("#C88A69"),
  MutedYellowOchreOne("#E3CC6F"), // Renamed to avoid starting with a number
  MutedYellowOchreTwo("#E2C44B"), // Renamed to avoid starting with a number
  SubduedGreen("#6A9770"),
  CalmAquamarineOne("#71E28A"), // Renamed to avoid starting with a number
  CalmAquamarineTwo("#2CBA4B"), // Renamed to avoid starting with a number
  DeepJungleGreen("#3D6E70"),
  ForestMossGreen("#5C876F"),
  SteelBlue("#4682B4"),
  MutedTeal("#5AA9C8"),
  CalmSkyBlue("#63B3CB"),
  DullCeruleanBlue("#6A9AB5");

  final String hexCode;

  const HairColors(this.hexCode);

  String get label => this.name;

  String get value => this.hexCode;
}
