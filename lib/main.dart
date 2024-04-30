import 'package:flutter/material.dart';

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
        brightness: Brightness.dark
      ),
      home: Scaffold(),

    );
}}