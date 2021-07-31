import 'package:flutter/material.dart';
import 'package:task_job/Utils/colors.dart';

class CategoryProducts extends StatefulWidget {
  @override
  _CategoryProductsState createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  int itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          itemIndex++;
        });
        // prov.totalIndex();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              itemIndex > 0
                  ? Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: ColorsUtils.kMainColor,
                        maxRadius: 15,
                        minRadius: 10,
                        child: Text(
                          "$itemIndex",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1530319067432-f2a729c03db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=980&q=80",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nike Shoes New",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$ 100.00",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
