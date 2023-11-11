import 'package:flutter/material.dart';
import 'my_theme.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: generateMaterialColor(Palette.primary),
            accentColor: Colors.purple,
          ),
          scaffoldBackgroundColor: Palette.primary,
          textTheme: TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          )),
      home: InputPage(),
    );
  }
}
