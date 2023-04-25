import 'package:bloc/bloc.dart';

class Counter extends Cubit<int> {
  Counter({this.initialition = 0}) : super(initialition);

  int initialition;

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(0);

  void add() => emit(state + 1);
  void remove() => emit(state - 1);
}
