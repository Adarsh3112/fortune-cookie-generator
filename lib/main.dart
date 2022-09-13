import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: fortuneCookie(),
      ),
    );

class fortuneCookie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime.shade400,
        appBar: AppBar(
          title: Text(
            "Your Fortune Cookie tells",
            style: TextStyle(
              fontFamily: 'Italianno',
              fontSize: 40,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lime.shade500,
        ),
        body: Cookie());
  }
}

class Cookie extends StatefulWidget {
  @override
  State<Cookie> createState() => _CookieState();
}

class _CookieState extends State<Cookie> {
  int cookieState = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            setState(() {
              cookieState = Random().nextInt(10) + 1;
            });
            print(cookieState);
          },
          child: Image.asset('images/for$cookieState.png')),
    );
  }
}
