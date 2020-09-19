import 'package:flutter/material.dart';
import 'package:vendor_app/constants.dart';

class MenuTile extends StatelessWidget {
  final Widget childWidget;

  MenuTile({this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: childWidget,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: kTileColor,
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }
}
