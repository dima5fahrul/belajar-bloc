import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/part8-bloc_provider_value/pages/other_page.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_widget.dart';
import 'increment_widget.dart';

class HomePagePart8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = context.read<Counter>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Dependency Injection'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    counter.decrement();
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: const SizedBox(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const DataWidget(),
              const IncrementWidget(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BlocProvider.value(
                  value: counter,
                  child: const OtherPage(),
                ),
              ),
            );
          },
          child: const Icon(Icons.arrow_forward),
        ));
  }
}
