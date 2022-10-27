import 'package:flutter/material.dart';
import 'package:hotelforyou/screen/auth/reset_password.dart';
import 'package:hotelforyou/screen/auth/signup.dart';
import 'package:hotelforyou/theme.dart';

class LogInScreen extends StatefulWidget {
  @override
  LogInScreenState createState() => LogInScreenState();
}

class LogInScreenState extends State<LogInScreen> {
  bool _isObscure = true;
  bool pass = true;
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final email = _emailTextController.text;
    final password = _passwordTextController.text;
    if (email == '111' && password == '111'){
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      errorText = 'Неверный ввод данных';
    }
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Hotel For You',
                style: greetingTextStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Впервые здесь?',
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
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Зарегестрируйся',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailTextController,
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
              TextField(
                controller: _passwordTextController,
                obscureText: pass ? _isObscure : false,
                decoration: InputDecoration(
                  labelText: 'Пароль',
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPasswordScreen()));
                    },
                    child: Text(
                      'Забыли пароль?',
                      style: TextStyle(
                        color: primaryColor300,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  if (errorText != null)
                    Text(
                      errorText,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: _auth,
                    style: buttonText,
                    child: Text('Вход'),                
                  ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}