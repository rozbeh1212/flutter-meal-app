// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  CategoryMealsScreen();
  @override
  Widget build(BuildContext context) {
    final routeArgs = //
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
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
        },
      ),
    );
  }
}
