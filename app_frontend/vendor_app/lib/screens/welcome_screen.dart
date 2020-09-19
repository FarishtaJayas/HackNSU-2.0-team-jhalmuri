import 'package:flutter/material.dart';
import 'package:vendor_app/constants.dart';
import 'package:vendor_app/widgets/welcome_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/logo.png',
              height: 100,
              width: 100,
            ),
            Center(
              child: Text(
                'ProcureBD',
                style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            InputBox(
              color: Colors.white70,
              onPressed: () {},
              title: 'লগইন',
            ),
            SizedBox(
              height: 25.0,
            ),
            InputBox(
              color: Colors.white70,
              onPressed: () {},
              title: 'রেজিস্ট্রার',
            ),
          ],
        ),
      ),
    );
  }
}
