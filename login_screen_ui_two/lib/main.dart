import 'package:flutter/material.dart';
import 'package:login_screen_ui_two/home_page.dart';
import 'package:login_screen_ui_two/register_page.dart';

void main() {
  runApp(
    LoginScreenTwo(),
  );
}

class LoginScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
