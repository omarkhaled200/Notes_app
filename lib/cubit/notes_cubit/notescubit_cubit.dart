import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notescubit_state.dart';

class NotescubitCubit extends Cubit<NotescubitState> {
  NotescubitCubit() : super(NotescubitInitial());

  final _box = Hive.box<NoteModel>(kNotesBox);

  List<NoteModel> notes = [];
  List<NoteModel>? archivedNotes;
  List<NoteModel>? deletedNotes;
  // تحميل كل النوتس (ماعدا archived و trash)
  void fetchAllNotes() {
    notes = _box.values
        .where((n) => (n.isArchived == false) && (n.isTrashed == false))
        .toList();

    // pinned فوق + sort حسب updatedAt
    notes.sort((a, b) {
      final ap = a.isPinned ? 1 : 0;
      final bp = b.isPinned ? 1 : 0;
      if (ap != bp) return bp.compareTo(ap); // pinned الأول
      return (b.updatedAt).compareTo(a.updatedAt); // الأحدث الأول
    });

    emit(NoteSuccess(notes));
  }

  // تحديث pin/unpin
  Future<void> togglePin(NoteModel note) async {
    note.isPinned = !note.isPinned;
    note.updatedAt = DateTime.now();
    await note.save();
    fetchAllNotes();
  }

  Future<void> moveToArchive(NoteModel note) async {
    note.isArchived = true;
    note.updatedAt = DateTime.now();
    await note.save();
    fetchAllNotes();
  }

  void moveToTrash(NoteModel note) async {
    note.isTrashed = true;
    note.isArchived = false;
    await note.save();
    fetchAllNotes();
  }

  void restoreNote(NoteModel note) async {
    note.isTrashed = false;
    note.save();
    await note.save();
    fetchAllNotes();
    featchDeletedNotes();
  }

  void purgeNote(NoteModel note) {
    note.delete();
    featchDeletedNotes();
  }

  featchArchivedNotes() {
    archivedNotes =
        _box.values.where((note) => note.isArchived == true).toList();
    emit(NoteSuccess(archivedNotes!));
  }

  void featchDeletedNotes() {
    deletedNotes = _box.values.where((note) => note.isTrashed == true).toList();

    emit(NoteSuccess(deletedNotes!));
  }

  void unarchiveNote(NoteModel note) async {
    note.isArchived = false;
    note.updatedAt = DateTime.now();
    await note.save();

    // رجعها للرئيسية
    fetchAllNotes();
    featchArchivedNotes();
  }
}
