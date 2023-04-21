import 'package:belajar_bloc/part1/stream.dart';
import 'package:belajar_bloc/part2/cubit.dart';
import 'package:belajar_bloc/part3/observer_cubit.dart';
import 'package:belajar_bloc/part4/pages/home_page.dart';
import 'package:belajar_bloc/part5/pages/home_page.dart';
import 'package:belajar_bloc/part6/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePagePart6(),
    );
  }
}
