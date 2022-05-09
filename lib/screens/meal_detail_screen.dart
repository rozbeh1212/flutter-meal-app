import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments
        as String; //mealId is the argument passed from the previous screen
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Detail'),),
      body: Center(
        child: Text('Meal  $mealId'),
      ),
      
    );
  }
}
