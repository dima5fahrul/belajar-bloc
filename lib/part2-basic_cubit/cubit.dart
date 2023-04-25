import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CubitPart extends StatelessWidget {
  CubitPart({super.key});

  CounterCubit counterCubit = CounterCubit(initialition: 6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cubit'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder(
                initialData: counterCubit.initialition,
                stream: counterCubit.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return Text(
                      'Result: ${snapshot.data}',
                      style: const TextStyle(
                        fontSize: 50,
                      ),
                    );
                  }
                }),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      counterCubit.decrement();
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      counterCubit.increment();
                    },
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        ));
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initialition = 0}) : super(initialition);

  int initialition;

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
