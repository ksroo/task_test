import 'package:flutter/material.dart';
import 'package:task_job/Utils/colors.dart';

TextEditingController searchController = TextEditingController();
Padding searchWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: ColorsUtils.kSearchBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Icon(Icons.search),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search CSV Products",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
