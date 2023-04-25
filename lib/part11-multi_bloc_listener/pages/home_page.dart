import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:quickalert/quickalert.dart';

class HomePagePart11 extends StatelessWidget {
  const HomePagePart11({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.read<CounterBloc>();
    final theme = context.read<ThemeBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Bloc Listener'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MultiBlocListener(
              listeners: [
                BlocListener<CounterBloc, int>(
                  listener: (context, state) {
                    ElegantNotification.success(
                      title: const Text('Bilangan Prima'),
                      description: Text('Bilangan Prima: $state'),
                    ).show(context);
                  },
                  listenWhen: (previous, current) {
                    if (current <= 1) {
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
                ),
                BlocListener<ThemeBloc, bool>(
                  listener: ((context, state) {
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.warning,
                      text:
                          'Kamu telah mengubah tema menjadi ${state ? 'Light' : 'Dark'}',
                      confirmBtnText: 'OK',
                      backgroundColor: state ? Colors.white : Colors.black,
                      textColor: state ? Colors.black : Colors.white,
                    );
                  }),
                  listenWhen: (previous, current) => true,
                )
              ],
              child: BlocBuilder<CounterBloc, int>(
                builder: (context, state) {
                  return Text(
                    '$state',
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
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
