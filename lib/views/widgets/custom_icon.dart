import 'package:flutter/material.dart';

// ignore: camel_case_types
class customIcon extends StatelessWidget {
  const customIcon({super.key, required this.icon});
final IconData icon; 
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16   )


      ),
      child: Center(
        child:Icon(icon , color: Colors.white, size: 28,) ,
      ),
  
    ); 
  }
}