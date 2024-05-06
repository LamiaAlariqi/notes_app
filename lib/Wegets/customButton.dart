import 'package:flutter/material.dart';
import 'package:notes_app/Wegets/constants.dart';

class custombutton extends StatelessWidget {
  const custombutton({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: Kprimarycolor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: isloading
              ? SizedBox(
                height: 24,
                width: 24,
                  child: const CircularProgressIndicator(
                  color: Colors.black,
                ))
              : const Text(
                  "add",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
