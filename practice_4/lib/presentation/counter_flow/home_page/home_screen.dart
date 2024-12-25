import 'package:flutter/material.dart';
import 'package:practice_4/presentation/counter_flow/observe_notes_page/observe_notes_page.dart';
import 'package:practice_4/presentation/counter_flow/add_note_page/add_note_page.dart';
import 'package:provider/provider.dart';

import '../notes_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Observer(
            //   builder: (_) {
            //     final NotesModel model = Provider.of<NotesModel>(context, listen: true);
            //     return Text('Значение: ${model.notes}');
            //   }
            // ),
            // SizedBox(height: 15),

            // TextButton(
            //   onPressed: () {
            //     final NotesModel model = Provider.of<NotesModel>(context, listen: false);
            //     model.counterIncrement();
            //   },
            //   child: Text('+1')
            // ),

            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AddNotePage()
                  ),
                );
              },
              child: const Text('Добавить заметку'),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ObserveNotesPage()
                  ),
                );
              },
              child: const Text('Посмотреть заметки'),
            )
          ],
        ),
      )
    );
  }
}
