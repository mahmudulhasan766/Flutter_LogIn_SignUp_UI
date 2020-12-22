import 'package:flutter/material.dart';
import 'package:flutter_login_signup/loginSignUp/sign_up.dart';
import 'package:flutter_login_signup/route/route.dart';

import 'loginSignUp/log_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        LOG_IN: (BuildContext context) => LogIn(),
        SIGN_UP: (BuildContext context) => SignUp(),
      },
      initialRoute: LOG_IN,
    );
  }
}
