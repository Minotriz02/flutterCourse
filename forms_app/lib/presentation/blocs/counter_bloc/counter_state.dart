part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  final int transctionCount;

  const CounterState({
    this.counter = 10,
    this.transctionCount = 0,
  });

  CounterState copyWith({
    int? counter,
    int? transctionCount,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        transctionCount: transctionCount ?? this.transctionCount,
      );

  @override
  List<Object> get props => [counter, transctionCount];
}
