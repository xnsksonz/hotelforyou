import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelforyou/screen/main/home/home_screen.dart';
import 'package:hotelforyou/screen/main/setting/settings_screen.dart';
import 'package:hotelforyou/screen/main/transaction/order_screen.dart';
import 'package:hotelforyou/theme.dart';

class MainScreen extends StatefulWidget {
  int currentScreen = 0;
  MainScreen({required this.currentScreen});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final screens = [
    HomeScreen(),
    OrderScreen(),
    SettingsScreen(),
  ];
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentScreen;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await _onBackPressed(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: backgroundColor,
              statusBarIconBrightness: Brightness.dark),
        ),
        backgroundColor: backgroundColor,
        body: screens[_currentIndex],
        bottomNavigationBar: CustomBottomNavBar(
          defaultSelectedIndex: _currentIndex,
          selectedItemIcon: const [
            'assets/icons/home_fill.png',
            'assets/icons/car_fill.png',
            'assets/icons/settings_fill.png'
          ],
          unselectedItemIcon: const [
            'assets/icons/home_outlined.png',
            'assets/icons/car_outlined.png',
            'assets/icons/settings_outlined.png'
          ],
          label: const ['Главная', 'Поездки', 'Ещё'],
          onChange: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
        ),
      ),
    );
  }

  Future<bool> _onBackPressed() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Выход'),
            content: const Text('Вы действительно хотите выйти из приложения?'),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Нет')),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Да'),
              ),
            ],
          ),
        ) ??
        false;
  }
}

class CustomBottomNavBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final List<String> selectedItemIcon;
  final List<String> unselectedItemIcon;
  final List<String> label;
  final Function(int) onChange;

  const CustomBottomNavBar(
      {this.defaultSelectedIndex = 0,
      required this.selectedItemIcon,
      required this.unselectedItemIcon,
      required this.label,
      required this.onChange});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  List<String> _selectedItemIcon = [];
  List<String> _unselectedItemIcon = [];
  List<String> _label = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
    _selectedItemIcon = widget.selectedItemIcon;
    _unselectedItemIcon = widget.unselectedItemIcon;
    _label = widget.label;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItems = [];

    for (int i = 0; i < 3; i++) {
      _navBarItems.add(bottomNavBarItem(
          _selectedItemIcon[i], _unselectedItemIcon[i], _label[i], i));
    }
    return Container(
      decoration: const BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _navBarItems,
      ),
    );
  }

  Widget bottomNavBarItem(activeIcon, inactiveIcon, label, index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: kBottomNavigationBarHeight,
        width: MediaQuery.of(context).size.width / _selectedItemIcon.length,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(borderRadiusSize))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _selectedIndex == index
              ? Container(
                  decoration: BoxDecoration(
                      color: primaryColor100,
                      borderRadius: BorderRadius.circular(borderRadiusSize)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        activeIcon,
                        width: 22,
                        height: 22,
                        color: primaryColor500,
                      ),
                      Text(
                        label,
                        style: bottomNavTextStyle,
                      )
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      inactiveIcon,
                      width: 22,
                      height: 22,
                      color: primaryColor300,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
