import 'package:flutter/material.dart';
import 'package:vendor_app/screens/contact_page.dart';
import 'package:vendor_app/screens/login_screen.dart';

import 'screens/dashboard.dart';
import 'screens/inventory_page.dart';
import 'screens/registrations_screen.dart';
import 'screens/welcome_screen.dart';

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
        DashBoard.id: (context) => DashBoard(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        Inventory.id: (context) => Inventory(),
        ContactPage.id: (context) => ContactPage(),
      },
    );
  }
}
