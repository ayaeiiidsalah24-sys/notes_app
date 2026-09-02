import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(

        hintText: 'Title',
        hintStyle: TextStyle(
          color: KPrimaryColor
        ),
         border: buildBorder(), 
         enabledBorder: buildBorder(), 
         focusedBorder: buildBorder(KPrimaryColor)
      ),


    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16) , 
        borderSide: BorderSide(color: Color?? Colors.white)


       );
  }
}

