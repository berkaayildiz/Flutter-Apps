import 'package:flutter/material.dart';

import '../logic/app_flow.dart';
import '../pages/home_page.dart';

void main() {
  runApp(const MyApp());
  appFlow();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
