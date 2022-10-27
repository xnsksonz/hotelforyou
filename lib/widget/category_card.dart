import 'package:flutter/material.dart';

import '../screen/search_screen.dart';
import '../theme.dart';
import '../utils/dummy_data.dart';

class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> categoryList = [];
    for (int i = 0; i < sityCategories.length; i++) {
      categoryList.add(CategoryCard(
          title: sityCategories[i].name,
          imageAsset: sityCategories[i].image));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: categoryList,
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  String title;
  String imageAsset;

  CategoryCard({required this.title, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
      child: Material(
        color: colorWhite,
        shadowColor: primaryColor500.withOpacity(0.1),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          highlightColor: primaryColor500.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          splashColor: primaryColor500.withOpacity(0.5),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SearchScreen(selectedDropdownItem: title,);
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CircleAvatar(
                    child: Image.asset(
                      imageAsset,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  title,
                  style: descTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
