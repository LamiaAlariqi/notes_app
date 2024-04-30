import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Wegets/customeappbar.dart';
import 'package:notes_app/Wegets/customnoteitem.dart';
import 'package:notes_app/Wegets/listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const[
          SizedBox(height: 50),
          Appbar(),
          Expanded(
            child: noteListview()),
           ],
      ),
    );
  }
}


