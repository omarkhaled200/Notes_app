part of 'notescubit_cubit.dart';

@immutable
abstract class NotescubitState {}

class NotescubitInitial extends NotescubitState {}

class NotesUpdatedState extends NotescubitState {}

class NoteSuccess extends NotescubitState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}
