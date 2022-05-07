import 'package:flutter/material.dart';
import './category_item.dart';
import 'dummy_data.dart';
class name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES.map((catgory) => CategoryItem(catgory.title, catgory.color)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent( // SliverGridDelegateWithMaxCrossAxisExtent is a widget that allows you to set the max cross axis extent of the grid.
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2, 
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
          ),
    );
  }
}
