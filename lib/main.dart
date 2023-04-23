import 'package:belajar_bloc/part1/stream.dart';
import 'package:belajar_bloc/part2/cubit.dart';
import 'package:belajar_bloc/part3/observer_cubit.dart';
import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/part4/pages/home_page.dart';
import 'package:belajar_bloc/part5/pages/home_page.dart';
import 'package:belajar_bloc/part7/pages/home_page.dart';
import 'package:belajar_bloc/part8/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: HomePagePart7(),
    // );
    // return BlocProvider(
    //   create: (context) => Counter(),
    //   child: MaterialApp(
    //     home: HomePagePart7(),
    //   ),
    // );
    return MaterialApp(
      home: BlocProvider(
        create: (context) => Counter(),
        child: HomePagePart8(),
      ),
    );
  }
}
