import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Wegets/customTextfield.dart';
import 'package:notes_app/Wegets/customeappbar.dart';

class Editnodeviewbody extends StatelessWidget {
  const Editnodeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 24,
          ),
          Appbar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(height: 50,),
          customTextfield(hint: 'Title'),
          SizedBox(height: 16,),
          customTextfield(hint: 'content',maxline: 5,)
        ],
      ),
    );
  }
}
