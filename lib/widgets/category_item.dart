import 'package:dine/widgets/category_meals.dart';
import 'package:flutter/material.dart';

import 'category_meals.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title, required this.bgColor, required this.id})
      : super(key: key);
  final String id;
  final String title;
  final Color bgColor;

  void _selectCategory (BuildContext ctx){
    Navigator.of(ctx).pushNamed( CategoryMeals.routeName, arguments: {'id':id, 'title': title,} );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(14),
        child: Center(child: Text(title, style: Theme.of(context).textTheme.bodyText1,)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              bgColor.withOpacity(0.8),
              bgColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
