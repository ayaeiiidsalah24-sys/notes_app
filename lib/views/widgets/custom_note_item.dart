import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/widgets/edit_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  const EditNoteView();
        }
        ),
        );
      },

      child: Container(
        padding: EdgeInsets.only(top: 24 , bottom: 24 , left:16  ),
       
        decoration: BoxDecoration(
          color: Colors.pink[200],
          borderRadius: BorderRadius.circular(16 
        ), 
      
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
            
              title: Padding(
      
                padding: const EdgeInsets.only( bottom: 16),
                child: Text("aya first note" , style: TextStyle(color: Colors.black.withValues(alpha: 0.4) , fontSize: 30 ),
                          
                 ),
              ),
              subtitle: Padding(
      
                padding: const EdgeInsets.only(bottom: 16),
                child: Text("it will be fine in shaa allah " , style: TextStyle(color: Colors.black , fontSize: 20),),
              ),
              trailing: IconButton(onPressed: (){}, icon:Icon(
                Icons.delete) , 
      
              color: Colors.black,
              iconSize: 24, 
              ),
            
              
            ) , 
            Padding(
              padding: const EdgeInsets.only(right: 24 ), 
      
              child: Text("september 1,2026" , style: TextStyle(color: Colors.black.withValues(alpha: 0.4) , 
              fontSize: 16
             ),
             ), 
      
            ), 
          ],
        )
       
      ),
    );
  }
}