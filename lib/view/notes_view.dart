import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/addnotebuttonsheet.dart';
import 'package:notes_app/Wegets/noteviewbody.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
  showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    context: context, builder: (context){
return const addnotebuttonsheet();

  });
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
