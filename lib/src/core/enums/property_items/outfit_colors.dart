import "package:avatar_maker/src/core/models/property_item.dart";

enum OutfitColors implements PropertyItem {
  White("#FFFFFF"),
  LightGray("#E6E6E6"),
  Gray("#929598"),
  DullGray("#B3B3B3"),
  SubduedGray("#7C7C7C"),
  DarkGray("#4E4E4E"),
  MutedDarkGray("#323232"),
  Black("#262E33"),

  PastelYellow("#FFFFB1"),
  Lemon("#CDDC39"),
  MutedYellowOchreOne("#E3CC6F"),
  MutedYellowOchreTwo("#E2C44B"),

  LightBlue("#65C9FF"),
  PastelBlue("#B1E2FF"),
  CalmSkyBlue("#63B3CB"),
  MutedTeal("#5AA9C8"),
  DullCeruleanBlue("#6A9AB5"),
  Blue("#5199E4"),
  SteelBlue("#4682B4"),
  DarkBlue("#25557C"),

  PastelGreen("#A7FFC4"),
  SubduedGreen("#6A9770"),
  CalmAquamarineOne("#71E28A"),
  CalmAquamarineTwo("#2CBA4B"),
  DeepJungleGreen("#3D6E70"),
  ForestMossGreen("#5C876F"),
  OliveForestGreen("#405D46"),
  Green("#1B5E20"),

  PastelOrange("#FFDEB5"),
  SoftTangerine("#F88132"),
  SoftCoralOrange("#C88A69"),
  Orange("#E64A19"),
  WarmAmber("#AB6A35"),

  Pink("#FF488E"),
  MellowHotPink("#CF5679"),
  WatermelonRed("#E76A7A"),
  PastelRed("#FFAFB9"),
  Red("#FF5C5C"),
  DeepRed("#B23A48"),
  SubduedBurgundy("#70323C"),
  WarmBrickRed("#97423B"),

  Purple("#8E24AA"),
  Fuchsia("#D81B60"),
  DustyPurple("#8A5082"),
  MutedVividViolet("#9B7BCC"),
  DullUltramarineBlue("#6457A6"),
  DustyRoyalPurple("#6C4B93"),

  Heather("#3C4F5C");

  final String hexCode;

  const OutfitColors(this.hexCode);

  String get label => this.name;
  String get value => this.hexCode;
}
