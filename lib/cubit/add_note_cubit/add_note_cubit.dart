import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/model/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit():super(AddNoteInitial());


  addnote(NoteModel note){}
}
