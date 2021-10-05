
enum Complexity { simple, challenging, hard }
enum Affordability { affordable, moderate, luxurious, }



class Meal {
  final String id;
  final List<String> catID;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  final bool isGlutenFree;
  final bool isLactose;
  final bool isVegan;
  final bool isVegetarian;

  Meal({
    required this.id,
    required this.catID,
    required this.title,
    required this.complexity,
    required this.duration,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactose,
    required this.isVegan,
    required this.isVegetarian,
  });
}
