import 'package:flutter/material.dart';

class LoginPageView extends StatefulWidget {
  @override
  _LoginPageViewState createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("selam"),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
    );
  }
}
