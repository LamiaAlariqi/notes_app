import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Wegets/addNoteForm.dart';
import 'package:notes_app/addNotescubit/add_notes_cubit.dart';

class addnotebuttonsheet extends StatelessWidget {
  const addnotebuttonsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailer) {
            print("Failed ${state}");
          }
          if (state is AddNotesSuccess) {
            
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading?true:false,
            child: Padding(
              padding: EdgeInsets.only(left: 16,right: 16
              ,bottom: MediaQuery.of(context).viewInsets.bottom,
              
              ),
              child: const SingleChildScrollView(child: const AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
