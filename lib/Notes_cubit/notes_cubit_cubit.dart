import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes() {
     emit(NotesLoading());
    try{
   var notesBox=Hive.box<NoteModel>(knoteBox);
   emit(NotesSuccess( notesBox.values.toList()));
    }
    catch(e){
      emit(NotesFailer(e.toString()));
    }
  }
}
