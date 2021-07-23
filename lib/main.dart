import 'package:flutter/material.dart';
import 'package:flutter_index_stacked_demo/indexstacked_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexStackedDemo(),
    );
  }
}
