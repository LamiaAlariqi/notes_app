import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Wegets/constants.dart';
import 'package:notes_app/addNotescubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class coloritem extends StatelessWidget {
  const coloritem({super.key, required this.isactive, required this.color});
  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 38,
            backgroundColor:color,
          );
  }
}

class colorslistview extends StatefulWidget {
  const colorslistview({super.key});

  @override
  State<colorslistview> createState() => _colorslistviewState();
}

class _colorslistviewState extends State<colorslistview> {
  @override
  int currentindex = 0;

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
                setState(() {
                  
                });
    BlocProvider.of<AddNotesCubit>(context).color=Kcolors[index];
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
