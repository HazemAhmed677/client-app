part of 'choose_bar_cubit.dart';

@immutable
sealed class ChooseBarState {}

final class ProjectsState extends ChooseBarState {}

final class AssignmentsState extends ChooseBarState {}

final class MeetingsState extends ChooseBarState {}

final class CompletedState extends ChooseBarState {}
