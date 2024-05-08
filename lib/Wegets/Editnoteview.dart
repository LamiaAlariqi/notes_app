import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Wegets/EditNoteColorlist.dart';
import 'package:notes_app/Wegets/colorslistview.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/Wegets/customTextfield.dart';
import 'package:notes_app/Wegets/customeappbar.dart';
import 'package:notes_app/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class Editnodeviewbody extends StatefulWidget {
  const Editnodeviewbody({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<Editnodeviewbody> createState() => _EditnodeviewbodyState();
}

class _EditnodeviewbodyState extends State<Editnodeviewbody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
         const  SizedBox (
            height: 24,
          ),
          Appbar(
            icon: Icons.check,
            title: 'Edit Note',
           onPressed: (){
              widget.notes.title=title?? widget.notes.title;
              widget.notes.subtitle=content?? widget.notes.subtitle;   
              widget.notes.save();   
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();  
              Navigator.pop(context);    
           },
          ),
          SizedBox(height: 50,),
          customTextfield(hint: widget.notes.title,
          onChanged: (value){
            title=value;
          },
          
          ),
          SizedBox(height: 16,),
          customTextfield(hint: widget.notes.subtitle,maxline: 5,
           onChanged: (value){
            content=value;
          },  
          ),
           SizedBox(height: 16,),
           EditNoteColorslist(notes: widget.notes,)
        ],
      ),
    );
  }
}
