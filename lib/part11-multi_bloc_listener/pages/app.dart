import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/theme.dart';
import 'package:belajar_bloc/part11-multi_bloc_listener/pages/home_page.dart';
import 'package:belajar_bloc/part12-bloc_selector/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../part10-multi_bloc_provider/pages/home_page.dart';

class App11 extends StatelessWidget {
  const App11({super.key});

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
            child: const HomePagePart11(),
          ),
        );
      },
    );
  }
}
