import 'package:flutter/material.dart';
import 'package:task_job/Utils/colors.dart';
import 'package:task_job/widget/category_products.dart';
import 'package:task_job/widget/top_category.dart';
import 'package:task_job/widget/widgets.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<String> topCategory = [
    'All',
    "Shoes",
    "Phone",
    "Chair",
    "Watch",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.kScaffoldBackground,
      body: Column(
        children: [
          searchWidget(),
          Container(
            width: double.infinity,
            height: 70,
            child: ListView.builder(
              itemCount: topCategory.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TopCategory(
                  topCategoryName: topCategory[index],
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.8,
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
                maxCrossAxisExtent: 220,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return CategoryProducts();
              },
            ),
          ),
        ],
      ),
    );
  }
}
