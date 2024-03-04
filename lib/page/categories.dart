import 'package:button_hide/components/Categories/Card.dart';
import 'package:button_hide/components/Categories/categor.dart';
import 'package:button_hide/components/input.dart';
import 'package:button_hide/config/imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Categories",
                  style: TextStyle(
                      color: AppColor.non,
                      fontSize: 34,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 27),
              Input(hindText: "Search"),
              SizedBox(height: 42),
              //OmmabobCategory(),
              Column(
                children: [
                  Wrap(
                    children: [OmmabobCategory()],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
