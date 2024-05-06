part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

 class NotesCubitInitial extends NotesCubitState {}
 class NotesLoading extends NotesCubitInitial {}
 class NotesSuccess extends NotesCubitInitial {
final List<NoteModel>notes;
 NotesSuccess(this.notes);
}
class NotesFailer extends NotesCubitInitial {
final String error;
NotesFailer(this.error);
}