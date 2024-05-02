import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/view/notes_view.dart';

void main() async{
  await Hive.initFlutter();

 await Hive.openBox(knoteBox);
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