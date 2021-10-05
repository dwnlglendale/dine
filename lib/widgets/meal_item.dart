import 'package:flutter/material.dart';
import 'package:dine/models/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.duration,
      required this.affordability,
      required this.complexity})
      : super(key: key);

  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  void _selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover,),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
