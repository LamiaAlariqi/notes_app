import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Wegets/addNoteForm.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/Wegets/customButton.dart';
import 'package:notes_app/Wegets/customTextfield.dart';
import 'package:notes_app/addNotescubit/add_notes_cubit.dart';

class addnotebuttonsheet extends StatelessWidget {
  const addnotebuttonsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
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
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: SingleChildScrollView(child: const AddNoteForm()));
          },
        ),
      ),
    );
  }
}
