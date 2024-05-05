import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/addNotescubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/view/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
   Hive.registerAdapter(NoteModelAdapter()); //مهم يكون قيل الي تحته 
  await Hive.openBox<NoteModel>(knoteBox);
  
    Bloc.observer= SimpleBlocObserver();
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: const NoteView(),
    );
  }
}
