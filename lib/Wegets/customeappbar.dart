import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Wegets/customIcon.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row( 
      children: [
        SizedBox(height: 20,),
 Text('$title',style: TextStyle(fontSize: 28),),
 Spacer(),
 CustomSearchIcon(icon: icon,)
      ]  
    );
  }
}  

