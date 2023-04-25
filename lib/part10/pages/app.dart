import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ThemeBloc>();

    return BlocBuilder<ThemeBloc, bool>(
      bloc: theme,
      builder: (context, state) {
        return MaterialApp(
          theme: state ? ThemeData.light() : ThemeData.dark(),
          home: BlocProvider(
            create: (context) => CounterBloc(),
            child: const HomePagePart10(),
          ),
        );
      },
    );
  }
}
