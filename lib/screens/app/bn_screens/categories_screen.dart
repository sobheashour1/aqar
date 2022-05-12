import 'package:flutter/material.dart';
import 'package:aqark/app_data.dart';
import 'package:aqark/widget/category_items.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      // decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //         begin:AlignmentDirectional.topStart,
      //         end: AlignmentDirectional.bottomEnd,
      //
      //         colors: [
      //           Colors.white,
      //           Colors.white12,
      //         ]
      //     )
      // ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: GridView(
            padding: const EdgeInsets.all(5),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 7/7.5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
          children: Categories_data.map((categoryData) =>
              CategoryItem(titles:categoryData.title,images: categoryData.imageUrl,id : categoryData.id ,)).toList(),
          ),
        ),
      ),
    );
  }
}

