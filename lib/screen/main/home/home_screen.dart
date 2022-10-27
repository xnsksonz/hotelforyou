import 'package:flutter/material.dart';
import 'package:hotelforyou/model/field.dart';
import 'package:hotelforyou/screen/search_screen.dart';
import 'package:hotelforyou/theme.dart';
import 'package:hotelforyou/utils/dummy_data.dart';
import 'package:hotelforyou/widget/category_card.dart';
import 'package:hotelforyou/widget/field_card.dart';

class HomeScreen extends StatelessWidget {
  List<Field> fieldList = recommendedField;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          header(context),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                  child: Text(
                    'Давайте путешествовать\nи веселиться!',
                    style: greetingTextStyle,
                  ),
                ),
                CategoryListView(),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Рекомендации",
                        style: subTitleTextStyle,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SearchScreen(
                                selectedDropdownItem: 'Все',
                              );
                            }));
                          },
                          child: const Text('Посмотреть все'))
                    ],
                  ),
                ),
                Column(
                    children: fieldList
                        .map((fieldEntity) => FieldCard(
                              field: fieldEntity,
                            ))
                        .toList()),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header(context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        // SEARCH Icon
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/girl.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Добро пожаловать',
                      style: descTextStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      sampleUser.name,
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor500,
                  borderRadius: BorderRadius.circular(borderRadiusSize)),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScreen(
                      selectedDropdownItem: '',
                    );
                  }));
                },
                icon: const Icon(Icons.search, color: colorWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
