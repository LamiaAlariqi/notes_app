import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  
  NotesCubitCubit() : super(NotesCubitInitial());
 List<NoteModel>? notes;
  fetchAllNotes() {
   var notesBox=Hive.box<NoteModel>(knoteBox);
  notes =notesBox.values.toList();
bool isBoxEmpty = notesBox.isEmpty;
if (isBoxEmpty) {
  print('الصندوق فارغ');
} else {
  print('****************الصندوق غير فارغ');
  print(notes!.length);
}
 
  
  }
  
}
