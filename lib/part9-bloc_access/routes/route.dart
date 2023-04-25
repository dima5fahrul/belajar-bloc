import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/part9-bloc_access/pages/home_page.dart';
import 'package:belajar_bloc/part9-bloc_access/pages/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterPage {
  final counter = Counter();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: HomePagePart9(),
          ),
        );
      case RouteName.other:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: const OtherPage9(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('404'),
            ),
          ),
        );
    }
  }
}

class RouteName {
  static const home = '/';
  static const other = '/other';
}
