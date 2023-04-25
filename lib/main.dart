import 'package:belajar_bloc/part1/stream.dart';
import 'package:belajar_bloc/part10/pages/app.dart';
import 'package:belajar_bloc/part10/pages/home_page.dart';
import 'package:belajar_bloc/part2/cubit.dart';
import 'package:belajar_bloc/part3/observer_cubit.dart';
import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/part4/pages/home_page.dart';
import 'package:belajar_bloc/part5/pages/home_page.dart';
import 'package:belajar_bloc/part7/pages/home_page.dart';
import 'package:belajar_bloc/part8/pages/home_page.dart';
import 'package:belajar_bloc/part9/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = RouterPage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Part 7
    // return BlocProvider(
    //   create: (context) => Counter(),
    //   child: MaterialApp(
    //     home: HomePagePart7(),
    //   ),
    // );

    // Part 8
    // return MaterialApp(
    //   home: BlocProvider(
    //     create: (context) => Counter(),
    //     child: HomePagePart8(),
    //   ),
    // );

    // Part 9
    // return MaterialApp(
    //   onGenerateRoute: router.onGenerateRoute,
    // );

    // Part 10
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: const App(),
    );
  }
}
