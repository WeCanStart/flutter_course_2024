import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../notes_model.dart';

class ObserveNotesScreen extends StatelessWidget {
  ObserveNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesModel model = Provider.of<NotesModel>(context, listen: true);

    return Scaffold(
      appBar: AppBar(title: const Text('Заметки')),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: model.notes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(model.notes[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  print(model.notes.length);
                  model.removeNote(index);
                }
              )
            );
          }
        )
      )
    );
  }
}
