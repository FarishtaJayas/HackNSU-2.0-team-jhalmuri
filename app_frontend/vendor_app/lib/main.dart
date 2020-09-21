import 'package:flutter/material.dart';
import 'package:vendor_app/screens/dashboard.dart';
import 'package:vendor_app/screens/inventory_page.dart';
import 'package:vendor_app/screens/welcome_screen.dart';

import 'screens/contact_page.dart';
import 'screens/login_screen.dart';
import 'screens/registrations_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProcureBD',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        DashBoard.id: (context) => DashBoard(),
        Inventory.id: (context) => Inventory(),
        ContactPage.id: (context) => ContactPage(),
      },
    );
  }
}
