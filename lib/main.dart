import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';


void main() async{
  await Hive.initFlutter(); 
 await Hive.openBox(kNotes); 
 Hive.registerAdapter(NoteModelAdapter());
  runApp(app()); 

}
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    // text takes its defauly value from theme
  theme: ThemeData(
    brightness:  Brightness.dark, 
    fontFamily: 'Poppins'
  ),
    home: const NotesView(),

   );
  }
}









