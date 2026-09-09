import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines =1, this.onSaved });
  
  final String hint ; 
  final int maxLines; 

  final void Function (String?)? onSaved; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty ?? true ){
          return 'Field is required'; 
        }
      },
      onSaved: onSaved,
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

