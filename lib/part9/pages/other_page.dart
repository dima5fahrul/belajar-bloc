import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:belajar_bloc/bloc/counter.dart';

class OtherPage9 extends StatelessWidget {
  const OtherPage9({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.read<Counter>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: Center(
        child: BlocBuilder<Counter, int>(
          bloc: counter,
          builder: (context, state) {
            return Text(
              '$state',
              style: const TextStyle(
                fontSize: 50,
              ),
            );
          },
        ),
      ),
    );
  }
}
