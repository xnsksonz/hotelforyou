import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hotelforyou/utils/dummy_data.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../theme.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
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
            'Профиль',
            style: titleTextStyle,
          ),
          backgroundColor: colorWhite,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sampleUser.name,
                              style: subTitleTextStyle,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: primaryColor100.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: primaryColor500)),
                              child: Text(
                                sampleUser.accountType,
                                style: descTextStyle.copyWith(
                                    color: primaryColor500),
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'О приложении:',
                  style: subTitleTextStyle.copyWith(color: primaryColor500),
                ),
                InkWell(
                  onTap: () {
                    _showSnackBar(context, 'Новейшая версия');
                  },
                  splashColor: primaryColor100,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: colorWhite),
                          child: const Icon(
                            CupertinoIcons.info_circle_fill,
                            size: 24,
                            color: primaryColor500,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hotel For You - приложение для бронирования отелей',
                                style: normalTextStyle,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                              'Версия 1.0.0',
                                style: descTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => launch(''),
                  splashColor: primaryColor100,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: colorWhite),
                          child: Image.asset(
                            'assets/icons/email.png',
                            color: primaryColor500,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: normalTextStyle,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'mllmomollm@gmail.com',
                                style: descTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const SizedBox(
                  height: 32,
                ),

                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/auth');
                  },
                  style: buttonText,
                  child: Text('Выйти из аккаунта'),                
                ),
              ]
            ),
        ),
    ));
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
}
