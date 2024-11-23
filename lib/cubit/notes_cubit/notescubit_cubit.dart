import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notescubit_state.dart';

class NotescubitCubit extends Cubit<NotescubitState> {
  NotescubitCubit() : super(NotescubitInitial());

  featchAllNotes() async {
    emit(Notescubitloading());
    try {
      var Notebox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = Notebox.values.toList();
      emit(NotescubitSuccess(notes));
    } catch (e) {
      emit(NotescubitFailure(e.toString()));
    }
  }
}
