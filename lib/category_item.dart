import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title, required this.bgColor})
      : super(key: key);

  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
