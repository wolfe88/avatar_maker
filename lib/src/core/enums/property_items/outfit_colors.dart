import "package:avatar_maker/src/core/models/property_item.dart";

enum OutfitColors implements PropertyItem {
  Black("#262E33"),
  LightBlue("#65C9FF"),
  Blue("#5199E4"),
  DarkBlue("#25557C"),
  LightGray("#E6E6E6"),
  Gray("#929598"),
  Heather("#3C4F5C"),
  PastelBlue("#B1E2FF"),
  PastelGreen("#A7FFC4"),
  PastelOrange("#FFDEB5"),
  PastelRed("#FFAFB9"),
  PastelYellow("#FFFFB1"),
  Pink("#FF488E"),
  Red("#FF5C5C"),
  White("#FFFFFF"),
  Green("#1B5E20"),
  Purple("#8E24AA"),
  Fuchsia("#D81B60"),
  Orange("#E64A19"),
  Lemon("#CDDC39"),
  DullGray("#B3B3B3"),
  SubduedGray("#7C7C7C"),
  DarkGray("#4E4E4E"),
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
  OliveForestGreen("#405D46"),
  SteelBlue("#4682B4"),
  MutedTeal("#5AA9C8"),
  CalmSkyBlue("#63B3CB"),
  DullCeruleanBlue("#6A9AB5");

  final String hexCode;

  const OutfitColors(this.hexCode);

  String get label => this.name;
  String get value => this.hexCode;
}
