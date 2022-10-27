import 'package:flutter/material.dart';
import 'package:hotelforyou/screen/auth/login.dart';
import 'package:hotelforyou/theme.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Сброс пароля',
              style: greetingTextStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Пожалуйста, введите свой адрес электронной почты',
              style: subTitleTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                //controller: ,
                decoration: InputDecoration(
                  labelText: 'Почта',
                  labelStyle: TextStyle(
                    color: primaryColor300,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor500),
                  ),
                  enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor300),
                  ),
                ),
              ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      )
                    );
                  },
                  style: buttonText,
                  child: Text('сброс пароля'),                
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}