import 'package:flutter/material.dart';

Text small_text(String text, Color colo) {
  return Text(
    text,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: colo),
  );
}
