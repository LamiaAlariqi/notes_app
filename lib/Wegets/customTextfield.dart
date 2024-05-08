import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/constants.dart';

class customTextfield extends StatelessWidget {
    const customTextfield({super.key, required this.hint, this.maxline=1,this.onSaved, this.onChanged});
   final String hint;
   final Function(String)? onChanged;
   final int maxline;
   final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value){
       if(value?.isEmpty ?? true){
        return 'Field is required';
       }
       else{
        return null;
       }
      },
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