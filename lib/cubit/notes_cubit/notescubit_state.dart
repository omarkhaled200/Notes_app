part of 'notescubit_cubit.dart';

@immutable
abstract class NotescubitState {}

class NotescubitInitial extends NotescubitState {}

class Notescubitloading extends NotescubitState {}

class NotescubitSuccess extends NotescubitState {
  final List<NoteModel> notes;

  NotescubitSuccess( this.notes);
}

class NotescubitFailure extends NotescubitState {
  final String errmessage;

  NotescubitFailure(this.errmessage);
}
