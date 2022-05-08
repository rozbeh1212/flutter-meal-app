// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import './dummy_data.dart';
class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  CategoryMealsScreen();
  @override
  Widget build(BuildContext context) {
    final routeArgs =  ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.all(20),
            ),
          );
        }, itemCount: categoryMeals.length,
      ),
    );
  }
}
