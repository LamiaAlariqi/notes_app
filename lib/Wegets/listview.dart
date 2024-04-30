import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/customnoteitem.dart';

class noteListview extends StatelessWidget {
  const noteListview({super.key});
final data=const[
];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
            itemBuilder: (BuildContext context, int index) { 
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: const noteitem(),
              );
             },
             
         );
  }
}
