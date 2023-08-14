import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './screens/home.dart';

void main() async {
  //init Flutter
  await Hive.initFlutter();

  //open box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
