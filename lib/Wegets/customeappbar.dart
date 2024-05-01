import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Wegets/customIcon.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( 
      children: const [
        SizedBox(height: 20,),
 Text('Notes',style: TextStyle(fontSize: 28),),
 Spacer(),
 CustomSearchIcon()
      ]  
    );
  }
}  

