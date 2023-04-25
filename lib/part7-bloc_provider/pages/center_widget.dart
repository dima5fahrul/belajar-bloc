import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<Counter>(context);

    return Center(
      child: BlocBuilder<Counter, int>(
        bloc: counter,
        builder: (context, state) {
          return Text(
            '$state',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
