import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';


void main(){
  runApp(app()); 
}
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
  theme: ThemeData(
    brightness: Brightness.dark ,
    fontFamily: 'Poppins', 
  ),
    home: const notes_view(),

   );
  }
}









