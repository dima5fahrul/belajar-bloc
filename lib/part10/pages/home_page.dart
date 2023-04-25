import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePagePart10 extends StatelessWidget {
  const HomePagePart10({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.read<CounterBloc>();
    final theme = context.read<ThemeBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Bloc Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text(
                  '$state',
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    counter.remove();
                  },
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                    onPressed: () {
                      counter.add();
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          theme.changeTheme();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
