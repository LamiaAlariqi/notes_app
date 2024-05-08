import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/colorslistview.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/models/note_model.dart';

class EditNoteColorslist extends StatefulWidget {
  const EditNoteColorslist({super.key, required this.notes});
  final NoteModel notes;
  @override
  State<EditNoteColorslist> createState() => _EditNoteColorslistState();
}

class _EditNoteColorslistState extends State<EditNoteColorslist> {
late  int currentindex;
 void initState(){
      currentindex=Kcolors.indexOf(Color(widget.notes.color));
    }
@override
  Widget build(BuildContext context) {
   
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: Kcolors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                widget.notes.color=Kcolors[index].value;
                setState(() {
                  
                });

              },
            
              child: coloritem(
                color: Kcolors[index],
                isactive: currentindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}