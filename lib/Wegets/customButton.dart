import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/constants.dart';

class custombutton extends StatelessWidget {
  const custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Kprimarycolor,
        borderRadius: BorderRadius.circular(8)
      ),
      child:const Center(
        child: Text("add",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}