import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_concepts/business_logic/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit? counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit!.close();
    });

    test('The initial state for CounterCubit is CounterState(counterValue: 0)',
        () {
      expect(counterCubit!.state, CounterState(counterValue: 0));
    });

    blocTest(
      'The cubit should emit a CounterState(counterValue: 1, wasIncremenred: true) when increment() is called.',
      build: () => counterCubit!,
      act: (cubit) => counterCubit!.increment(),
      expect: () =>
          <CounterState>[CounterState(counterValue: 1, wasIncremented: true)],
    );

    blocTest(
      'The cubit should emit a CounterState(counterValue: -1, wasIncremenred: false) when decrement() is called.',
      build: () => counterCubit!,
      act: (cubit) => counterCubit!.decrement(),
      expect: () =>
          <CounterState>[CounterState(counterValue: -1, wasIncremented: false)],
    );
  });
}
