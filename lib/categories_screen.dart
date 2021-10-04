import 'package:flutter/material.dart';

import 'dummy_data.dart';
import 'category_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dine Xtra'),),
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: dummyCategories
            .map(
              (catData) =>
                  CategoryItem(title: catData.title, bgColor: catData.bgColor, id: catData.iD,),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
