// ignore_for_file: file_names, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:eleventh/Cubits/CounterCubit/counterState.dart';
import 'package:eleventh/Public/publicEnums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlock extends Cubit<CounterState> {
  CounterBlock():super(CounterReaset());
  int pointTeamA = 0;
  int pointTeamB = 0;
  void Counter({int? increasePoint, Teams? nameOfTeam}) {
    if (nameOfTeam == Teams.TeamA) {
      pointTeamA += increasePoint!;
      emit(CounterIncreaseTeamA());
    } else if (nameOfTeam == Teams.TeamB) {
      pointTeamB += increasePoint!;
      emit(CounterIncreaseTeamB());
    } else {
      pointTeamA = 0;
      pointTeamB = 0;
      emit(CounterReaset());
    }
  }
}
