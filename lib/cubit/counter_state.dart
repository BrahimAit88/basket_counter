part of 'counter_cubit.dart';

sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class TeamAState extends CounterState {}

final class TeamBState extends CounterState {}

final class RestartTeamState extends CounterState {}
