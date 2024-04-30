import 'package:flutter/material.dart';
import 'package:notes_app/view/notes_view.dart';

void main(){
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
      home:const NoteView(),

    );
}}