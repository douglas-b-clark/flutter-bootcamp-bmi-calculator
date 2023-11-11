import 'package:flutter/material.dart';
import 'dart:math';

const bottomContainerHeight = 80.0;

// From an article by Moritz Morgenroth
// https://medium.com/@morgenroth/using-flutters-primary-swatch-with-a-custom-materialcolor-c5e0f18b95b0

// To add colours, go to 'Colours' section below.

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

// Colours:
int primaryColor = 0xFF0A0E21;

// Update the following class when Colours is edited:
class Palette {
  static Color primary = Color(primaryColor);
  static Color activeCardColor = Color(0xFF1D1E33);
  static Color inactiveCardColor = Color(0xFF111328);
  static Color bottomContainerColor = Color(0xFFEB1555);
  static Color activeSliderColor = Color(0xFFEB1555);
  static Color inactiveSliderColor = Color(0xFF8D8E98);
  static Color thumbColor = Color(0xFFEB1555);
  static Color overlayColor = Color(0x29EB1555);
  static Color buttonBackgroundColor = Color(0xFF4C4F5E);
}

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const numberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const buttonTextStyle = TextStyle(
  fontSize: 24.0,
);

const titleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const resultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const bmiTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const bodyTextStyle = TextStyle(
  fontSize: 22.0,
);
