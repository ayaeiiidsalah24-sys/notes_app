
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_view_body.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}

