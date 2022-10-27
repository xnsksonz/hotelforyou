import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/field.dart';
import '../theme.dart';
import '../utils/dummy_data.dart';
import '../widget/field_list.dart';

class SearchScreen extends StatefulWidget {
  String selectedDropdownItem;
  List<Field> fieldList = hotelFieldList;

  SearchScreen({required this.selectedDropdownItem});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _query = '';
  String _selectedDropdownItem = 'Все';
  List<Field> _fieldList = [];
  List<Field> _selectedListByCategory = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _query = widget.selectedDropdownItem;
    _fieldList = widget.fieldList;

    if (_query != '') {
      _selectedDropdownItem = widget.selectedDropdownItem;
      for (int i = 0; i < _fieldList.length; i++) {
        if (_selectedDropdownItem == 'Все') {
          _selectedListByCategory = _fieldList;
        } else if (_fieldList[i].category.name == _selectedDropdownItem) {
          _selectedListByCategory.add(_fieldList[i]);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue100,
      appBar: AppBar(
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: primaryColor300,
            statusBarIconBrightness: Brightness.light),
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
            color: primaryColor500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(CupertinoIcons.arrow_left),
                  color: colorWhite,
                ),
                showDropdown()
              ],
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                  color: primaryColor500,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(borderRadiusSize))),
              child: searchBar()),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: _selectedListByCategory
                    .map((fieldEntity) => FieldList(
                          field: fieldEntity,
                        ))
                    .toList())
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget noMatchDataView() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            'assets/images/sorry.gif',
            width: 200,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            'No Match Data.',
            style: titleTextStyle.copyWith(color: darkBlue300),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Sorry we couldn`t find what you were looking for, \nplease try another keyword.',
            style: descTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget showDropdown() {
    return DropdownButton<String>(
        value: _selectedDropdownItem,
        iconEnabledColor: colorWhite,
        iconDisabledColor: primaryColor300,
        dropdownColor: primaryColor500,
        style: normalTextStyle.copyWith(color: colorWhite),
        icon: const Icon(Icons.filter_alt),
        isDense: false,
        isExpanded: false,
        underline: const SizedBox(),
        alignment: Alignment.centerRight,
        items: <String>[
          'Все',
          'Москва',
          'Санкт-Петербург',
          'Новосибирск',
          'Екатеринбург',
          'Казань',
          'Нижний Новгород',
          'Челябинск',
          'Омск',
          'Самара',
          'Ростов-на-Дону',
          'Уфа',
          'Красноярск',
          'Пермь',
          'Воронеж',
          'Волгоград'
        ]
            .map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
                  child: Text(value),
                  value: value,
                ))
            .toList(),
        onChanged: (value) {
          _selectedListByCategory = [];
          setState(() {
            _selectedDropdownItem = value.toString();
            for (int i = 0; i < _fieldList.length; i++) {
              if (_selectedDropdownItem == 'Все') {
                _selectedListByCategory = _fieldList;
              } else if (_fieldList[i].category.name == _selectedDropdownItem) {
                _selectedListByCategory.add(_fieldList[i]);
              }
            }
          });
        });
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 16.0, right: 16.0, top: 0.0, bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: lightBlue100,
            borderRadius: BorderRadius.circular(borderRadiusSize)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
          child: TextField(
            onChanged: (String value) {
              setState(() {
                _query = value;
              });
            },
            onSubmitted: (String value) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Ок'),
                          child: const Text('Ок'),
                        ),
                      ],
                      title: const Text('Привет :)'),
                      content: const Text(
                          'Не работает'),
                    );
                  });
            },
            controller: _controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(
                    color: primaryColor300,
                  ),
                hintText: 'Поиск..',
                suffixIcon: _controller.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => _controller.clear(),
                      )),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
