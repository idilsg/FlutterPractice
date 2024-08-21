import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel ({ //constructor
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Salad', 
        iconPath: 'assets/icons/green-salad.svg', 
        boxColor: Color(0xff92A3FD)
      )
    );

    categories.add(
      CategoryModel(
        name: 'Oat Bowl', 
        iconPath: 'assets/icons/oat-bowl.svg', 
        boxColor: Color(0xffC588F2)
      )
    );

    categories.add(
      CategoryModel(
        name: 'Pancake', 
        iconPath: 'assets/icons/pancakes.svg', 
        boxColor: Color(0xff92A3FD)
      )
    );

    categories.add(
      CategoryModel(
        name: 'Egg', 
        iconPath: 'assets/icons/egg.svg', 
        boxColor: Color(0xffC588F2)
      )
    );

    return categories;
  }
}