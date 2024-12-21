import 'package:flutter/material.dart';
import 'package:practice_4/presentation/counter_flow/notes_model.dart';
import 'package:practice_4/presentation/counter_flow/observe_notes_page/observe_notes_screen.dart';
import 'package:provider/provider.dart';

class ObserveNotesPage extends StatelessWidget {

  const ObserveNotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ObserveNotesScreen();
  }
}
