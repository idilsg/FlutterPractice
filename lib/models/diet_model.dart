import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel ({ //constructor
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/honey-pancake.svg',
        level: 'Easy',
        duration: '20 mins',
        calorie: '120 kCal',
        viewIsSelected: true,
        boxColor: Color(0xff9DCEFF)
      )
    );

    diets.add(
      DietModel(
        name: 'Crepe',
        iconPath: 'assets/icons/crepe.svg',
        level: 'Easy',
        duration: '5 mins',
        calorie: '230 kCal',
        viewIsSelected: false,
        boxColor: Color(0xffEEA4CE)
      )
    );

    return diets;
  }
}