import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/Wegets/customnoteitem.dart';
import 'package:notes_app/models/note_model.dart';

class noteListview extends StatelessWidget {
  const noteListview({super.key});
  final data = const [];

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
      List<NoteModel>notes=BlocProvider.of<NotesCubitCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
           itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child:  noteitem(
                  notes: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
