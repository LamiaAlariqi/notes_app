 import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/customTextfield.dart';

class addnotebuttonsheet extends StatelessWidget {
  const addnotebuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 32,),
          customTextfield()
        ],
      ),
    );
  }
}