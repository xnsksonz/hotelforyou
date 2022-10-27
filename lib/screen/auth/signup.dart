import 'package:flutter/material.dart';
import 'package:hotelforyou/screen/auth/login.dart';
import 'package:hotelforyou/theme.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Регистрация',
                style: greetingTextStyle,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Уже есть аккаунт?',
                    style: subTitleTextStyle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    child: Text(
                      'Вход',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: TextField(
                //controller: ,
                decoration: InputDecoration(
                  labelText: 'Имя',
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
            ),
            Padding(
              padding: kDefaultPadding,
              child: TextField(
                //controller: ,
                decoration: InputDecoration(
                  labelText: 'Фамилия',
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
            ),
            Padding(
              padding: kDefaultPadding,
              child: TextField(
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
            ),
            Padding(
              padding: kDefaultPadding,
              child: TextField(
                //controller: ,
                obscureText: pass ? _isObscure : false,
                decoration: InputDecoration(
                  labelText: 'Новый пароль',
                  labelStyle: TextStyle(
                    color: primaryColor300,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor500),
                  ),
                  enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor300),
                  ),
                  suffixIcon: pass
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: _isObscure
                            ? Icon(
                                Icons.visibility_off,
                                color: primaryColor300,
                              )
                            : Icon(
                                Icons.visibility,
                                color: primaryColor500,
                              ))
                  : null,
                ),
              ),
            ),
            Padding(
              padding: kDefaultPadding,
              child: TextField(
                //controller: ,
                obscureText: pass ? _isObscure : false,
                decoration: InputDecoration(
                  labelText: 'Повторите пароль',
                  labelStyle: TextStyle(
                    color: primaryColor300,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor500),
                  ),
                  enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor300),
                  ),
                  suffixIcon: pass
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: _isObscure
                            ? Icon(
                                Icons.visibility_off,
                                color: primaryColor300,
                              )
                            : Icon(
                                Icons.visibility,
                                color: primaryColor500,
                              ))
                  : null,
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
                  onPressed: (){},
                  style: buttonText,
                  child: Text('Зарегестрироваться'),                
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}