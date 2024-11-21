import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pick_date_state.dart';

class PickDateCubit extends Cubit<PickDateState> {
  PickDateCubit() : super(PickDateInitial());

  void pickDate({required DateTime date}) {
    emit(PickDateSelected(date));
  }
}
