part of 'switch_views_cubit.dart';

@immutable
sealed class SwitchViewsState {}

final class HomeState extends SwitchViewsState {}

final class CheckBoardState extends SwitchViewsState {}

final class CreateBoardState extends SwitchViewsState {}

final class NotificationState extends SwitchViewsState {}

final class ProfileState extends SwitchViewsState {}
