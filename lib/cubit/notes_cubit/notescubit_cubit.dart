import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notescubit_state.dart';

class NotescubitCubit extends Cubit<NotescubitState> {
  NotescubitCubit() : super(NotescubitInitial());

  List<NoteModel>? notes;
  featchAllNotes() async {
    var notebox = Hive.box<NoteModel>(kNotesBox);
    notes = notebox.values.toList();
  }
}
