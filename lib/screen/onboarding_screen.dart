import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hotelforyou/screen/main/main_screen.dart';
import 'package:hotelforyou/theme.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showWelcomeDialog(context));
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: backgroundColor,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/love.gif',
                height: 300,
              ),
              SizedBox(height: 32,),
              Text(
                'Легко и просто',
                style: titleTextStyle.copyWith(fontSize: 24,color: darkBlue300),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Откройте для себя и забронируйте номер отеля из любого места в любое время!',
                style: descTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('skipOnBoarding', true);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
              return MainScreen(
                currentScreen: 0,);}));
          },
          style: buttonText,
          child: Text('Присоединиться'),                
        ),
      ),
    );
  }

  showWelcomeDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'Ок'),
                child: const Text('Ок'),
              ),
            ],
            title: const Text('Благодарим Вас за установку'),
            content: const Text('Hotel For You делает доступным бронирование гостиниц по всему миру всего за одну минуту.'),
          );
        });
  }
}
