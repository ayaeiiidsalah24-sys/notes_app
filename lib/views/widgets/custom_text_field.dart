import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines =1 });
  
  final String hint ; 
  final int maxLines; 


  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: maxLines,

      decoration: InputDecoration(

        hintText: hint,
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

