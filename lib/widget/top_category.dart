import 'package:flutter/material.dart';
import 'package:task_job/Utils/colors.dart';

class TopCategory extends StatefulWidget {
  final String topCategoryName;

  TopCategory({required this.topCategoryName});

  @override
  _TopCategoryState createState() => _TopCategoryState();
}

class _TopCategoryState extends State<TopCategory> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isSelected
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: ColorsUtils.kMainColor,
                      minimumSize: Size(80, 30),
                      shape: StadiumBorder()),
                  onPressed: () {
                    setState(() {
                      isSelected = false;
                    });
                  },
                  child: Text(
                    "${widget.topCategoryName}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(80, 30),
                      shape: StadiumBorder()),
                  onPressed: () {
                    setState(() {
                      isSelected = true;
                    });
                  },
                  child: Text(
                    "${widget.topCategoryName}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
