 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Wegets/customButton.dart';
import 'package:notes_app/Wegets/customTextfield.dart';

class addnotebuttonsheet extends StatelessWidget {
  const addnotebuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  final GlobalKey <FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ? title,subtitle;
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          customTextfield(hint: 'Title',onSaved:(value){
             title=value;
          },),
          const SizedBox(height: 16,),
          customTextfield(hint: 'Content',maxline: 5, onSaved: (value){
            subtitle=value;
          },),
           const SizedBox(height: 32,),
          custombutton( 
            onTap: (){
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },

          ),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}