import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnote(NoteModel note) async {
    emit(AddNoteloading());
    try {
      var Notebox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await Notebox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
