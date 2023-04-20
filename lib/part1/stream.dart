import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StreamPart extends StatelessWidget {
  const StreamPart({super.key});

  Stream<int> countStream() async* {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: countStream(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Text(
                  'Awaiting result...',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                );
              default:
                return Text(
                  'Result: ${snapshot.data}',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
