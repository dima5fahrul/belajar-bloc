import 'package:belajar_bloc/part1-stream/stream.dart';
import 'package:belajar_bloc/part10-multi_bloc_provider/pages/app.dart';
import 'package:belajar_bloc/part10-multi_bloc_provider/pages/home_page.dart';
import 'package:belajar_bloc/part11-multi_bloc_listener/pages/app.dart';
import 'package:belajar_bloc/part12-bloc_selector/pages/home_page.dart';
import 'package:belajar_bloc/part13-extension_method/pages/home_page.dart';
import 'package:belajar_bloc/part2-basic_cubit/cubit.dart';
import 'package:belajar_bloc/part3-observer_cubit/observer_cubit.dart';
import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/part4-bloc_builder/pages/home_page.dart';
import 'package:belajar_bloc/part5-bloc_listener/pages/home_page.dart';
import 'package:belajar_bloc/part7-bloc_provider/pages/home_page.dart';
import 'package:belajar_bloc/part8-bloc_provider_value/pages/home_page.dart';
import 'package:belajar_bloc/part9-bloc_access/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme.dart';
import 'bloc/user.dart';

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
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => CounterBloc(),
    //     ),
    //     BlocProvider(
    //       create: (context) => ThemeBloc(),
    //     ),
    //   ],
    //   child: const App(),
    // );

    // Part 11
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => CounterBloc(),
    //     ),
    //     BlocProvider(
    //       create: (context) => ThemeBloc(),
    //     ),
    //   ],
    //   child: const App11(),
    // );

    // Part 12
    // return MaterialApp(
    //   home: BlocProvider(
    //     create: (context) => UserBloc(),
    //     child: const HomePagePart12(),
    //   ),
    // );

    // Part 13
    return MaterialApp(
      home: BlocProvider(
        create: (context) => UserBloc(),
        child: const HomePagePart13(),
      ),
    );
  }
}
