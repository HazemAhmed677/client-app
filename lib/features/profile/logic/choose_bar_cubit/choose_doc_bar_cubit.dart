import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'choose_doc_bar_state.dart';

class ChooseDocumentBarCubit extends Cubit<ChooseDocBarState> {
  ChooseDocumentBarCubit() : super(LawsState());
  chooseBar(int currentIndex) {
    if (currentIndex == 0) {
      emit(LawsState());
    } else if (currentIndex == 1) {
      emit(TaxesState());
    } else {
      emit(RegulationsState());
    }
  }
}
