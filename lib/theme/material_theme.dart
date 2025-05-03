import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8f4a4f),
      surfaceTint: Color(0xff8f4a4f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdada),
      onPrimaryContainer: Color(0xff723338),
      secondary: Color(0xff765657),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdada),
      onSecondaryContainer: Color(0xff5d3f40),
      tertiary: Color(0xff76592f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffddb2),
      onTertiaryContainer: Color(0xff5c421a),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      onSurfaceVariant: Color(0xff524343),
      outline: Color(0xff857373),
      outlineVariant: Color(0xffd7c1c2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inversePrimary: Color(0xffffb2b6),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff3b0810),
      primaryFixedDim: Color(0xffffb2b6),
      onPrimaryFixedVariant: Color(0xff723338),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff2c1516),
      secondaryFixedDim: Color(0xffe6bdbe),
      onSecondaryFixedVariant: Color(0xff5d3f40),
      tertiaryFixed: Color(0xffffddb2),
      onTertiaryFixed: Color(0xff291800),
      tertiaryFixedDim: Color(0xffe7c08d),
      onTertiaryFixedVariant: Color(0xff5c421a),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e4),
      surfaceContainerHighest: Color(0xfff0dede),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e2329),
      surfaceTint: Color(0xff8f4a4f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa1585d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4a2f30),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff866566),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff49310b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff86683c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff170f0f),
      onSurfaceVariant: Color(0xff413333),
      outline: Color(0xff5f4f4f),
      outlineVariant: Color(0xff7a6969),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inversePrimary: Color(0xffffb2b6),
      primaryFixed: Color(0xffa1585d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff844046),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff866566),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6c4d4e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff86683c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6c5027),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd3c3c3),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfff6e4e4),
      surfaceContainerHigh: Color(0xffead9d9),
      surfaceContainerHighest: Color(0xffdfcece),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff51191f),
      surfaceTint: Color(0xff8f4a4f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff75353b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3f2526),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5f4143),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3e2803),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5f441c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff362929),
      outlineVariant: Color(0xff554546),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inversePrimary: Color(0xffffb2b6),
      primaryFixed: Color(0xff75353b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff591f25),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5f4143),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff462b2d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5f441c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff452e08),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5b5b5),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffedec),
      surfaceContainer: Color(0xfff0dede),
      surfaceContainerHigh: Color(0xffe2d0d0),
      surfaceContainerHighest: Color(0xffd3c3c3),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb2b6),
      surfaceTint: Color(0xffffb2b6),
      onPrimary: Color(0xff561d23),
      primaryContainer: Color(0xff723338),
      onPrimaryContainer: Color(0xffffdada),
      secondary: Color(0xffe6bdbe),
      onSecondary: Color(0xff44292b),
      secondaryContainer: Color(0xff5d3f40),
      onSecondaryContainer: Color(0xffffdada),
      tertiary: Color(0xffe7c08d),
      onTertiary: Color(0xff432c06),
      tertiaryContainer: Color(0xff5c421a),
      onTertiaryContainer: Color(0xffffddb2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfff0dede),
      onSurfaceVariant: Color(0xffd7c1c2),
      outline: Color(0xff9f8c8c),
      outlineVariant: Color(0xff524343),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inversePrimary: Color(0xff8f4a4f),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff3b0810),
      primaryFixedDim: Color(0xffffb2b6),
      onPrimaryFixedVariant: Color(0xff723338),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff2c1516),
      secondaryFixedDim: Color(0xffe6bdbe),
      onSecondaryFixedVariant: Color(0xff5d3f40),
      tertiaryFixed: Color(0xffffddb2),
      onTertiaryFixed: Color(0xff291800),
      tertiaryFixedDim: Color(0xffe7c08d),
      onTertiaryFixedVariant: Color(0xff5c421a),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0c),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff322828),
      surfaceContainerHighest: Color(0xff3d3232),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd1d3),
      surfaceTint: Color(0xffffb2b6),
      onPrimary: Color(0xff481219),
      primaryContainer: Color(0xffca7a7f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffdd2d3),
      onSecondary: Color(0xff381f20),
      secondaryContainer: Color(0xffad8889),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffed6a2),
      onTertiary: Color(0xff362100),
      tertiaryContainer: Color(0xffad8b5d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1112),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed7d7),
      outline: Color(0xffc2adad),
      outlineVariant: Color(0xff9f8c8c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inversePrimary: Color(0xff743439),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff2c0007),
      primaryFixedDim: Color(0xffffb2b6),
      onPrimaryFixedVariant: Color(0xff5e2329),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff200b0c),
      secondaryFixedDim: Color(0xffe6bdbe),
      onSecondaryFixedVariant: Color(0xff4a2f30),
      tertiaryFixed: Color(0xffffddb2),
      onTertiaryFixed: Color(0xff1b0e00),
      tertiaryFixedDim: Color(0xffe7c08d),
      onTertiaryFixedVariant: Color(0xff49310b),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff4d4242),
      surfaceContainerLowest: Color(0xff0d0606),
      surfaceContainerLow: Color(0xff241b1c),
      surfaceContainer: Color(0xff2f2526),
      surfaceContainerHigh: Color(0xff3b3030),
      surfaceContainerHighest: Color(0xff463b3b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffeceb),
      surfaceTint: Color(0xffffb2b6),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffadb1),
      onPrimaryContainer: Color(0xff210004),
      secondary: Color(0xffffeceb),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe2b9ba),
      onSecondaryContainer: Color(0xff190607),
      tertiary: Color(0xffffedda),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe2bc8a),
      onTertiaryContainer: Color(0xff130900),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1a1112),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffeceb),
      outlineVariant: Color(0xffd3bebe),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inversePrimary: Color(0xff743439),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb2b6),
      onPrimaryFixedVariant: Color(0xff2c0007),
      secondaryFixed: Color(0xffffdada),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe6bdbe),
      onSecondaryFixedVariant: Color(0xff200b0c),
      tertiaryFixed: Color(0xffffddb2),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe7c08d),
      onTertiaryFixedVariant: Color(0xff1b0e00),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff594d4d),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff271d1e),
      surfaceContainer: Color(0xff382e2e),
      surfaceContainerHigh: Color(0xff443939),
      surfaceContainerHighest: Color(0xff504444),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
