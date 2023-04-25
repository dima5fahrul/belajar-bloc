import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePagePart13 extends StatelessWidget {
  const HomePagePart13({super.key});

  @override
  Widget build(BuildContext context) {
    // EXTENSION METHOD

    // 1. context.read()
    // final counter = context.read<Counter>(); // <== read hanya 1x

    // 2. context.watch()
    // final counter = context.watch<
    //     Counter>(); // <== read berkali2 jika ada perubahan seperti stateful widget

    // 3. context.select()
    // read berkali2 jika ada perubahan seperti stateful widget
    // String name =
    //     context.select<UserBloc, String>((user) => user.state["name"]);
    // int age = context.select<UserBloc, int>((age) => age.state["age"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Extension Method'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              String name = context
                  .select<UserBloc, String>((user) => user.state["name"]);
              if (kDebugMode) {
                print("Build Text Nama: $name");
              }
              return Text(
                'Name: $name',
                style: const TextStyle(fontSize: 24),
              );
            }),
            Builder(builder: (context) {
              int age =
                  context.select<UserBloc, int>((age) => age.state["age"]);
              if (kDebugMode) {
                print("Build Age: $age");
              }
              return Text(
                'Age: $age',
                style: const TextStyle(fontSize: 24),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => context
                      .read<UserBloc>()
                      .changeAge(context.read<UserBloc>().state["age"] - 1),
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () => context
                      .read<UserBloc>()
                      .changeAge(context.read<UserBloc>().state["age"] + 1),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
