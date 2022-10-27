import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelforyou/model/field_order.dart';
import 'package:intl/intl.dart';
import 'package:hotelforyou/model/checkbox_state.dart';
import 'package:hotelforyou/model/field.dart';
import 'package:hotelforyou/screen/main/main_screen.dart';
import 'package:hotelforyou/theme.dart';
import 'package:hotelforyou/utils/dummy_data.dart';

class CheckoutScreen extends StatefulWidget {
  Field field;

  CheckoutScreen({required this.field});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final TextEditingController _controller = TextEditingController();
  DateTime _dateTime = DateTime.now();
  DateTime _dateEndTime = DateTime.now();
  final dateFormat = DateFormat('EEEE, dd MMM yyyy');
  var availableBookTime = [
    CheckBoxState(title: '00.00'),
  ];
  int _totalBill = 0;
  bool _enableCreateOrderBtn = false;
  List<String> timeList = timeToBook;
  var currentTime = '00.00';


  PopupTextType popupTextType = PopupTextType.no;
  RoomData _roomData = RoomData(1, 1);

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });

    for (var time in timeList) {
      if (time == widget.field.openTime) {
        currentTime = time;
        print('$currentTime и $time');
      }
    }

    availableBookTime.removeAt(0);
    for (int i = timeList.indexOf(currentTime); i < 24; i++) {
      if (currentTime == widget.field.closeTime) {
        break;
      } else {
        availableBookTime
            .add(CheckBoxState(title: "${timeList[i]} - ${timeList[i + 1]}"));
        currentTime = timeList[i + 1];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: colorWhite,
              statusBarIconBrightness: Brightness.dark,
            ),
            title: Text('Бронь'),
            backgroundColor: colorWhite,
            centerTitle: true,
            foregroundColor: primaryColor500,
          ),
          SliverPadding(
            padding:
                const EdgeInsets.only(right: 24, left: 24, bottom: 24, top: 8),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Название:',
                    style: subTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor100, width: 2),
                        color: lightBlue100,
                        borderRadius: BorderRadius.circular(borderRadiusSize)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/pin.png',
                          width: 24,
                          height: 24,
                          color: primaryColor500,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(widget.field.name,
                            style: normalTextStyle.copyWith(
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Дата заезда:',
                    style: subTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      _selectDate();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor100, width: 2),
                          color: lightBlue100,
                          borderRadius:
                              BorderRadius.circular(borderRadiusSize)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.date_range_rounded,
                            color: primaryColor500,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            _dateTime == null
                                ? 'Дата не выбрана..'
                                : dateFormat.format(_dateTime).toString(),
                            style: normalTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Дата выезда:',
                    style: subTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      _selectEndDate();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor100, width: 2),
                          color: lightBlue100,
                          borderRadius:
                              BorderRadius.circular(borderRadiusSize)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.date_range_rounded,
                            color: primaryColor500,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            _dateEndTime == null
                                ? 'Дата не выбрана..'
                                : dateFormat.format(_dateEndTime).toString(),
                            style: normalTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Дата заезда:',
                    style: subTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  getRowView('Количество номеров', _roomData.numberRoom, PopupTextType.no),
                  getRowView('Количество людей', _roomData.people, PopupTextType.ad),
                ],
              ),
            ])),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: lightBlue300,
            offset: Offset(0, 0),
            blurRadius: 10,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                      BorderRadius.circular(borderRadiusSize))),
                onPressed: () {
                  List<String> selectedTime = [];
                          dummyUserOrderList.add(FieldOrder(
                              field: widget.field,
                              user: sampleUser,
                              selectedDate:
                                  dateFormat.format(_dateTime).toString(),
                              selectedTime: selectedTime));
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                        MainScreen(currentScreen: 1)),
                    (route) => false);
                  _showSnackBar(
                    context, 'Бронирование успешно');
                },
                child: Text(
                  'Забронировать',
                  style: buttonTextStyle,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      content:
        Text(message),
        backgroundColor: primaryColor500,
      margin: const EdgeInsets.all(16),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _selectDate() async {
    await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 14))
        .then((value) {
      setState(() {
        _dateTime = value!;
        _dateEndTime = value;
      });
    });
  }

  void _selectEndDate() async {
    await showDatePicker(
            context: context,
            initialDate: _dateTime,
            firstDate: _dateTime,
            lastDate: DateTime(_dateTime.year, _dateTime.month, _dateTime.day + 14))
        .then((value) {
      setState(() {
        _dateEndTime = value!;
      });
    });
  }

  Widget getRowView(String txt, int count, PopupTextType popupTextType) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Divider(
                          height: 1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  txt,
                                  textAlign: TextAlign.left,
                                  style: subTitleTextStyle
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (popupTextType == PopupTextType.no) {
                                  _roomData.numberRoom -= 1;
                                  if (_roomData.numberRoom < 1) {
                                    _roomData.numberRoom = 1;
                                  }
                                } else {
                                  _roomData.people -= 1;
                                  if (_roomData.people < 1) {
                                    _roomData.people = 1;
                                  }
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.remove_circle_outline,
                                size: 28,
                                color: primaryColor500,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '  $count  ',
                          style: subTitleTextStyle,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (popupTextType == PopupTextType.no) {
                                  _roomData.numberRoom += 1;
                                } else if (popupTextType ==
                                    PopupTextType.ad) {
                                  _roomData.people += 1;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 28,
                                color: primaryColor500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

enum PopupTextType { no, ad, ch }
