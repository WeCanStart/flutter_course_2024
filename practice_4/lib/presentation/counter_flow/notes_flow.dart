import 'package:flutter/material.dart';
import 'package:practice_4/presentation/counter_flow/notes_model.dart';
import 'package:practice_4/presentation/counter_flow/home_page/home_page.dart';
import 'package:provider/provider.dart';

class NotesFlow extends StatelessWidget {
  NotesFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<NotesModel>(
      create: (_) => NotesModel(),
      builder: (context, child) {
        return HomePage();
      },
    );
  }
}
