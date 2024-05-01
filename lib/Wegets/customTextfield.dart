import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/constants.dart';

class customTextfield extends StatelessWidget {
  const customTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:Kprimarycolor ,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: Kprimarycolor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(Kprimarycolor)
      ),
    );
  }

  OutlineInputBorder buildborder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color:Color?? Colors.white)
      );
  }
}