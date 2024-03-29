import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;  
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color);

  void _selecteCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/category-meal',
      arguments: {'id': id, 'title': title}
    );
      // MaterialPageRoute(
      //   builder: (_) {
      //     return CategoryMealsScreen(id, title);
      //   },
      // ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: () => _selecteCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
