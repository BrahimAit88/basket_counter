import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamANumber = 0;
  int teamBNumber = 0;

  void counterIncriment({
    required String team,
    required int number,
  }) {
    if (team == 'A') {
      teamANumber += number;
      emit(TeamAState());
    } else {
      teamBNumber += number;
      emit(TeamBState());
    }
  }

  void restarTeam() {
    teamANumber = 0;
    teamBNumber = 0;
    emit(RestartTeamState());
  }
}
