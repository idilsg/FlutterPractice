class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this. boxIsSelected
  });

  static List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel> popularDiets = [];

    popularDiets.add(
      PopularDietsModel(
        name: 'Blueberry Pancake', 
        iconPath: 'assets/icons/pancakes.svg', 
        level: 'Medium', 
        duration: '20 mins', 
        calorie: '180 kCal', 
        boxIsSelected: true
      )
    );

    popularDiets.add(
      PopularDietsModel(
        name: 'Sushi', 
        iconPath: 'assets/icons/sushi.svg', 
        level: 'Hard', 
        duration: '35 mins', 
        calorie: '125 kCal', 
        boxIsSelected: false
      )
    );

    return popularDiets;
  }
}