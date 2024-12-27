import 'package:flutter/material.dart';
import 'package:practice_4/presentation/counter_flow/observe_notes_page/observe_notes_page.dart';
import 'package:practice_4/presentation/counter_flow/add_note_page/add_note_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
