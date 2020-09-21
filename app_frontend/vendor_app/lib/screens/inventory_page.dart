import 'package:flutter/material.dart';
import 'package:vendor_app/constants.dart';

class Inventory extends StatefulWidget {
  static String id = "inventory_screen";
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Inventory',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Add Item',
                      style: TextStyle(color: Colors.white70),
                    ),
                    color: Colors.pink,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
