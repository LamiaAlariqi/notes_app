import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/Editnoteview.dart';
import 'package:notes_app/models/note_model.dart';

class editnoteview extends StatelessWidget {
  const editnoteview({super.key, required this.notes});
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Editnodeviewbody(
notes: notes,

      ),
    );
  }
}