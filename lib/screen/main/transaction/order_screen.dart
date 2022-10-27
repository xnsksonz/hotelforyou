import 'package:flutter/material.dart';
import 'package:hotelforyou/model/field_order.dart';
import 'package:hotelforyou/theme.dart';
import 'package:hotelforyou/utils/dummy_data.dart';
import 'package:hotelforyou/widget/no_transaction_message.dart';

class OrderScreen extends StatelessWidget {
  List<FieldOrder> fieldOrderList = dummyUserOrderList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(3.0),
          child: Container(
            color: primaryColor300,
            height: 3.0,
          ),
        ),
        toolbarHeight: kTextTabBarHeight,
        title: Text(
          'Поездки',
          style: titleTextStyle,
        ),
        backgroundColor: colorWhite,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: backgroundColor,
      body: fieldOrderList.isEmpty
        ? Center(
            child: SingleChildScrollView(
              child: NoTranscationMessage(
                messageTitle: 'Нет забронированных отелей.',
                messageDesc: 'Вы никогда не бронировали. Давайте подберем отель.',
              )
            )
          )
        : ListView.builder(
            itemCount: fieldOrderList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                splashColor: primaryColor100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(fieldOrderList[index]
                                    .field
                                    .imageAsset))),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fieldOrderList[index].field.name,
                            style: normalTextStyle,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(fieldOrderList[index].selectedDate,
                              style: normalTextStyle),
                              TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Да'),
                                    child: const Text('Да'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Нет'),
                                    child: const Text('Нет'),
                                  ),
                                ],
                                title: const Text('Привет :)'),
                                content: const Text('Вы действительно хотите отменить бронь?'),
                              );
                            }
                          );
                        },
                        style: buttonText.copyWith(
                          backgroundColor: MaterialStateProperty.all(Colors.red)
                        ),
                        child: Text('Отменить'),                
                      ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              );
            }
          )
        );
  }
}
