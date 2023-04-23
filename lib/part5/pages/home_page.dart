import 'package:belajar_bloc/bloc/counter.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePagePart5 extends StatelessWidget {
  Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Listener'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocListener<Counter, int>(
              bloc: counter,
              listener: (context, state) {
                ElegantNotification.success(
                  title: const Text('Bilangan Prima'),
                  description: Text('State: $state'),
                ).show(context);
              },
              listenWhen: (previous, current) {
                if (current == 1) {
                  return false;
                } else if (current == 2) {
                  return true;
                } else {
                  for (var i = 2; i < current; i++) {
                    if (current % i == 0) {
                      return false;
                    }
                  }
                  return true;
                }
              },
              child: BlocBuilder<Counter, int>(
                bloc: counter,
                builder: (context, state) {
                  return Text(
                    'Result: $state',
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              IconButton(
                onPressed: () {
                  counter.decrement();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  counter.increment();
                },
                icon: const Icon(Icons.add),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
