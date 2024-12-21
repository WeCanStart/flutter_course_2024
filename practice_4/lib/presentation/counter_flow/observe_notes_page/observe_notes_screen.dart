import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../notes_model.dart';

class ObserveNotesScreen extends StatelessWidget {
  const ObserveNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesModel model = Provider.of<NotesModel>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text('Заметки')),
      body: ListView.builder(
        itemCount: model.notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(model.notes[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                model.removeNote(index);
              },
            ),
          );
        },
      ),
    );
  }
}
