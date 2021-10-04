import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
   const CategoryMeals({Key? key,}) : super(key: key);

   static const routeName = '/category-meals';

@override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String> ;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title:  Text(categoryTitle!),
      ),
      body: const Center(
        child: Text('Recipe Screen'),
      ),
    );
  }
}
