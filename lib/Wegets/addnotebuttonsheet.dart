 import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/customButton.dart';
import 'package:notes_app/Wegets/customTextfield.dart';

class addnotebuttonsheet extends StatelessWidget {
  const addnotebuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(height: 32,),
            customTextfield(hint: 'Title',),
            SizedBox(height: 16,),
            customTextfield(hint: 'Content',maxline: 5,),
              SizedBox(height: 32,),
            custombutton(),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}