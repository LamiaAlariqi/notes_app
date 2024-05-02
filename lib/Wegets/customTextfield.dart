import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/constants.dart';

class customTextfield extends StatelessWidget {
   const customTextfield({super.key, required this.hint, this.maxline=1});
   final String hint;
   final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor:Kprimarycolor ,
      decoration: InputDecoration(
        hintText: hint,
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