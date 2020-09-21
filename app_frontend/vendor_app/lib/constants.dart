import 'package:flutter/material.dart';

const kScaffoldBackgroundColor = Color(0xFF111328);
const kTileColor = Color(0xFF1D1E33);
const kInputDecoration = InputDecoration(
  filled: true,
  focusColor: Colors.white70,
  fillColor: Colors.white70,
  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white70, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white70, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
