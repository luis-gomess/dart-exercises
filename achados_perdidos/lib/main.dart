import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const AchadosApp());
}

class AchadosApp extends StatelessWidget {
  const AchadosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Achados e Perdidos IFCE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HomePage(),
    );
  }
}
