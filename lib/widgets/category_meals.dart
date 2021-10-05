import 'package:dine/widgets/dummy_data.dart';
import 'package:flutter/material.dart';


class CategoryMeals extends StatelessWidget {
  const CategoryMeals({
    Key? key,
  }) : super(key: key);

  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = dummyMeals.where((meal) {
      return meal.catID.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body:  SafeArea(
        child: ListView.builder(itemBuilder: (ctx, index){
             return Text(categoryMeals[index].title);
        }, itemCount: categoryMeals.length,),
      ),
    );
  }
}
