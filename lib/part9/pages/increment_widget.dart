import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class IncrementWidget extends StatelessWidget {
  const IncrementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counter = context.read<Counter>();

    return Material(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          counter.increment();
        },
        borderRadius: BorderRadius.circular(10),
        child: const SizedBox(
          width: 100,
          height: 100,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
