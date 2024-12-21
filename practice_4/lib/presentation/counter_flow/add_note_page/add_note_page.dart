import 'package:flutter/material.dart';
import 'package:practice_4/presentation/counter_flow/notes_model.dart';
import 'package:practice_4/presentation/counter_flow/add_note_page/add_note_screen.dart';
import 'package:provider/provider.dart';

class AddNotePage extends StatelessWidget {

  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNoteScreen();
  }
}
