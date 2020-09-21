import 'package:flutter/material.dart';
import 'package:vendor_app/constants.dart';
import 'package:vendor_app/screens/contact_page.dart';
import 'package:vendor_app/screens/inventory_page.dart';
import 'package:vendor_app/widgets/menu_tile.dart';

class DashBoard extends StatelessWidget {
  static String id = "dashboard_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 30.0),
                  child: Text(
                    'Vendor View',
                    style: TextStyle(
                      fontSize: 43.0,
                      color: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Inventory.id);
                  },
                  color: Colors.pink,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    'Add Item',
                    style: TextStyle(color: Colors.white70),
                  ),
                )
              ],
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    MenuTile(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/inventory.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'ইনভেন্টরি',
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                    MenuTile(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/order.png',
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            'অর্ডার',
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  MenuTile(
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/payment.png',
                          height: 90,
                          width: 90,
                        ),
                        Text(
                          'পেমেন্ট',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                  MenuTile(
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/report.png',
                          height: 90,
                          width: 90,
                        ),
                        Text(
                          'রিপোর্ট',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  MenuTile(
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/search.png',
                          height: 90,
                          width: 90,
                        ),
                        Text(
                          'আইটেম খুঁজুন',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                  MenuTile(
                    childWidget: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ContactPage.id);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/contact.png',
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            'যোগাযোগ করুন',
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
