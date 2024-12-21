import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../notes_model.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesModel model = Provider.of<NotesModel>(context, listen: false);
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Write your note',
              border: OutlineInputBorder()
            )
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              model.addNote(controller.text);
              Navigator.of(context).pop();
            },
            child: Text('Save note')
          )
        ]
      )
    );
  }
}
