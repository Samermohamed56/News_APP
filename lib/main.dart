import 'package:flutter/material.dart';
import 'package:news/screen/newshome.dart';
void main() {
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Newshome());
  }
}


