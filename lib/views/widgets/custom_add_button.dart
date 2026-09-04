import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width ,
      height: 55,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(16), 
        // border: 
      ),
      child: Center( child: Text("Add" , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold, color: Colors.black),
       ) , 
      ),
    );
  }
}
