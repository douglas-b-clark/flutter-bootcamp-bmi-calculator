import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import '../my_theme.dart';

class SexCard extends ReusableCard {
  SexCard({super.color, required this.sex, required super.handleTap});

  final Sex sex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: super.handleTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              sex == Sex.male ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
              size: 80.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              sex == Sex.male ? 'MALE' : 'FEMALE',
              style: labelTextStyle,
            ),
          ],
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}

enum Sex { male, female }
