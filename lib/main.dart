import 'package:flutter/material.dart';
import 'package:map/screens/wms_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play With Map',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WmsScreen(),
    );
  }
}
