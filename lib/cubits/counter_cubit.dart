import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int counterA = 0;
  int counterB = 0;

  void incrementTeam({required String team, required int pointNumber}) {
    if (team == 'A' || team == 'a') {
      counterA += pointNumber;
      emit(CounterAIncrementState());
    } else if (team == 'B' || team == 'b') {
      counterB += pointNumber;
      emit(CounterBIncrementState());
    } else {
      throw Exception(
        'Team name is invalid, it must be \'A\', \'a\' or \'B\' \'b\'',
      );
    }
  }

  void resetCounters() {
    counterA = 0;
    counterB = 0;
    emit(CounterAIncrementState());
    emit(CounterBIncrementState());
  }
}
