import 'package:dine/models/meal.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

const dummyCategories = [
  Category(iD: 'c1', title: 'Italian', bgColor: Colors.blue),
  Category(iD: 'c2', title: 'Chinese', bgColor: Colors.yellow),
  Category(iD: 'c3', title: 'Ghanaian', bgColor: Colors.red),
  Category(iD: 'c4', title: 'French', bgColor: Colors.grey),
  Category(iD: 'c5', title: 'Portuguese', bgColor: Colors.green),
  Category(iD: 'c6', title: 'Jamaican', bgColor: Colors.indigo),
  Category(iD: 'c7', title: 'British', bgColor: Colors.orange),
  Category(iD: 'c8', title: 'American', bgColor: Colors.blue),
];

final dummyMeals = [
  Meal(
      id: 'm1',
      catID: ['c1', 'c2'],
      title: 'Spaghetti with Tomato Sauce',
      complexity: Complexity.simple,
      duration: 20,
      imageUrl:
          'https://images-gmi-pmc.edge-generalmills.com/71c89d7a-9347-481b-adc0-0ecab07b24b4.jpg',
      ingredients: [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
      ],
      steps: ['Butter one side with white bread'],
      affordability: Affordability.moderate,
      isGlutenFree: false,
      isLactose: false,
      isVegan: false,
      isVegetarian: false),
  Meal(
      id: 'm2',
      catID: ['c3', 'c4'],
      title: 'Beef Tarts',
      complexity: Complexity.simple,
      duration: 20,
      imageUrl:
      'https://images-gmi-pmc.edge-generalmills.com/71c89d7a-9347-481b-adc0-0ecab07b24b4.jpg',
      ingredients: [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
      ],
      steps: ['Butter one side with white bread'],
      affordability: Affordability.moderate,
      isGlutenFree: false,
      isLactose: false,
      isVegan: false,
      isVegetarian: false),
];
