import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/noteviewbody.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:NotesViewBody() ,
    );
  }
}

