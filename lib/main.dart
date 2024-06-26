import 'package:flutter/material.dart';
import 'package:language/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Language Translator',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: MyHomePage()
    );
  }
}


