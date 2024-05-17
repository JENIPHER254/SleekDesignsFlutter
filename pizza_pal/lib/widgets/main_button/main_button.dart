import 'package:flutter/material.dart';

ElevatedButton main_button(String text, Function action) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    onPressed: () {
      action();
    },
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(text, style: TextStyle(color: Colors.white)),
    ),
  );
}
