import 'package:dine/screens/category_meals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:dine/screens/categories_screen.dart';
import 'screens/meal_detail.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dine',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue)
            .copyWith(secondary: Colors.orange)
            .copyWith(
                surface: const Color.fromRGBO(
              255,
              254,
              229,
              1,
            )),
        textTheme: ThemeData.light().textTheme.copyWith(bodyText2: GoogleFonts.raleway(), bodyText1: GoogleFonts.robotoCondensed(),),
      ),
      home: const CategoriesPage(),
      routes: {
        CategoryMeals.routeName: (ctx) => const CategoryMeals(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dine Xtra'),
      ),
      body: const Center(
        child: Text('Recipe Screen'),
      ),

    );
  }
}
