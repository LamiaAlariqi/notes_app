

import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/addNoteForm.dart';

class colorslistview extends StatelessWidget {
  const colorslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const coloritem();
      },
      
      ),
    );
  }
}