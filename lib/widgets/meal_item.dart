import 'package:dine/screens/meal_detail.dart';
import 'package:flutter/material.dart';
import 'package:dine/models/meal.dart';


class MealItem extends StatelessWidget {
  const MealItem(
      {Key? key,
        required this.id,
        required this.imageUrl,
        required this.title,
        required this.duration,
        required this.affordability,
        required this.complexity})
      : super(key: key);

  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  void _selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetailScreen.routeName, arguments: {'id': id,});
  }

  String get complexityText{
    switch (complexity){
      case Complexity.simple:
        return 'Simple';
      case Complexity.challenging:
        return 'Challenging';
      case Complexity.hard:
        return 'Hard';
        default:
          return 'Unknown';
    }
  }

  String get affordabilityText{
    switch (affordability){
      case Affordability.affordable:
        return 'Affordable';
      case Affordability.moderate:
        return 'Moderate';
      case Affordability.luxurious:
        return 'Luxurious';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
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
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black54,
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),

            ]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:  [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 6,),
                      Text('$duration mins'),
                    ],
                  ),
                  Row(children: [
                    const Icon(Icons.work),
                    const SizedBox(width: 7,),
                    Text(complexityText),
                  ],),
                  Row(children: [
                    const Icon(Icons.attach_money),
                    const SizedBox(width: 2,),
                    Text(affordabilityText),
                  ],),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}
