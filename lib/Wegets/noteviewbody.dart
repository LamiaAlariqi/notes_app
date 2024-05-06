import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/Wegets/customeappbar.dart';
import 'package:notes_app/Wegets/customnoteitem.dart';
import 'package:notes_app/Wegets/listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();

}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initState(){
    BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding (
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:[
          SizedBox(height: 20),
          Appbar(title: 'Notes', icon: Icons.search,),
          Expanded(
            child: noteListview()),
           ],
      ),
    );
  }
}


